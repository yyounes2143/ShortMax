.class public final Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;
.super Ljava/lang/Object;
.source "HandleInvocationsFromAdViewer.kt"

# interfaces
.implements Lcom/unity3d/services/core/di/IServiceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_AD_DATA:Ljava/lang/String; = "adData"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_AD_DATA_REFRESH_TOKEN:Ljava/lang/String; = "adDataRefreshToken"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_AD_STRING:Ljava/lang/String; = "adString"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_AD_TYPE:Ljava/lang/String; = "type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_AD_UNIT_ID:Ljava/lang/String; = "adUnitId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DOWNLOAD_PRIORITY:Ljava/lang/String; = "priority"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_DOWNLOAD_URL:Ljava/lang/String; = "url"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_IMPRESSION_CONFIG:Ljava/lang/String; = "impressionConfig"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_IS_HEADER_BIDDING:Ljava/lang/String; = "isHeaderBidding"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_LOAD_OPTIONS:Ljava/lang/String; = "loadOptions"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_NATIVE_CONTEXT:Ljava/lang/String; = "nativeContext"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OMID:Ljava/lang/String; = "openMeasurement"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OMJS_SERVICE:Ljava/lang/String; = "serviceFilePath"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OMJS_SESSION:Ljava/lang/String; = "sessionFilePath"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OM_PARTNER:Ljava/lang/String; = "partnerName"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OM_PARTNER_VERSION:Ljava/lang/String; = "partnerVersion"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_OM_VERSION:Ljava/lang/String; = "version"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PLACEMENT_ID:Ljava/lang/String; = "placementId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PLACEMENT_NAME:Ljava/lang/String; = "placementName"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PRIVACY_UPDATE_CONTENT:Ljava/lang/String; = "content"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PRIVACY_UPDATE_VERSION:Ljava/lang/String; = "version"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_QUERY_ID:Ljava/lang/String; = "queryId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_TRACKING_TOKEN:Ljava/lang/String; = "trackingToken"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_VIDEO_LENGTH:Ljava/lang/String; = "videoLength"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->Companion:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/unity3d/services/core/di/IServiceComponent$DefaultImpls;->getServiceProvider(Lcom/unity3d/services/core/di/IServiceComponent;)Lcom/unity3d/services/core/di/IServiceProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final invoke(Lkt/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/jvm/functions/Function1;)Lkt/b;
    .locals 62
    .param p1    # Lkt/f;
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
    .param p5    # Lcom/unity3d/ads/core/data/model/AdObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/f<",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkt/b<",
            "Lcom/unity3d/ads/adplayer/Invocation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p5

    .line 6
    .line 7
    move-object/from16 v9, p6

    .line 8
    .line 9
    const-string v0, "onInvocations"

    .line 10
    .line 11
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "adData"

    .line 15
    .line 16
    move-object/from16 v1, p2

    .line 17
    .line 18
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "adDataRefreshToken"

    .line 22
    .line 23
    move-object/from16 v2, p3

    .line 24
    .line 25
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "impressionConfig"

    .line 29
    .line 30
    move-object/from16 v3, p4

    .line 31
    .line 32
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "adObject"

    .line 36
    .line 37
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "onSubscription"

    .line 41
    .line 42
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static/range {p2 .. p2}, Lcom/unity3d/ads/core/data/model/AdData;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static/range {p4 .. p4}, Lcom/unity3d/ads/core/data/model/ImpressionConfig;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static/range {p3 .. p3}, Lcom/unity3d/ads/core/data/model/AdDataRefreshToken;->constructor-impl(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    new-instance v10, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$1;

    .line 58
    .line 59
    move-object v0, v10

    .line 60
    move-object/from16 v1, p0

    .line 61
    .line 62
    move-object v2, v4

    .line 63
    move-object v4, v5

    .line 64
    move-object/from16 v5, p5

    .line 65
    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$1;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "com.unity3d.services.ads.api.AdViewer.getAdContext"

    .line 70
    .line 71
    invoke-static {v0, v10}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$2;

    .line 76
    .line 77
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$2;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "com.unity3d.services.core.api.DeviceInfo.getConnectionType"

    .line 81
    .line 82
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$3;

    .line 87
    .line 88
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$3;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "com.unity3d.services.core.api.DeviceInfo.getDeviceVolume"

    .line 92
    .line 93
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$4;

    .line 98
    .line 99
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$4;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "com.unity3d.services.core.api.DeviceInfo.getDeviceMaxVolume"

    .line 103
    .line 104
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$5;

    .line 109
    .line 110
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$5;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 111
    .line 112
    .line 113
    const-string v1, "com.unity3d.services.core.api.DeviceInfo.getScreenHeight"

    .line 114
    .line 115
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 116
    .line 117
    .line 118
    move-result-object v15

    .line 119
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$6;

    .line 120
    .line 121
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$6;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 122
    .line 123
    .line 124
    const-string v1, "com.unity3d.services.core.api.DeviceInfo.getScreenWidth"

    .line 125
    .line 126
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 127
    .line 128
    .line 129
    move-result-object v16

    .line 130
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$7;

    .line 131
    .line 132
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$7;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 133
    .line 134
    .line 135
    const-string v1, "com.unity3d.services.ads.api.AdViewer.openUrl"

    .line 136
    .line 137
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 138
    .line 139
    .line 140
    move-result-object v17

    .line 141
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$8;

    .line 142
    .line 143
    invoke-direct {v0, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$8;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 144
    .line 145
    .line 146
    const-string v1, "com.unity3d.services.ads.api.AdViewer.setOrientation"

    .line 147
    .line 148
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 149
    .line 150
    .line 151
    move-result-object v18

    .line 152
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$9;

    .line 153
    .line 154
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$9;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 155
    .line 156
    .line 157
    const-string v1, "com.unity3d.services.ads.api.AdViewer.sendOperativeEvent"

    .line 158
    .line 159
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 160
    .line 161
    .line 162
    move-result-object v19

    .line 163
    const-string v0, "com.unity3d.services.core.api.Storage.write"

    .line 164
    .line 165
    sget-object v1, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$10;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$10;

    .line 166
    .line 167
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v20

    .line 171
    const-string v0, "com.unity3d.services.core.api.Storage.read"

    .line 172
    .line 173
    sget-object v1, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$11;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$11;

    .line 174
    .line 175
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 176
    .line 177
    .line 178
    move-result-object v21

    .line 179
    const-string v0, "com.unity3d.services.core.api.Storage.delete"

    .line 180
    .line 181
    sget-object v1, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$12;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$12;

    .line 182
    .line 183
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 184
    .line 185
    .line 186
    move-result-object v22

    .line 187
    const-string v0, "com.unity3d.services.core.api.Storage.clear"

    .line 188
    .line 189
    sget-object v1, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$13;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$13;

    .line 190
    .line 191
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 192
    .line 193
    .line 194
    move-result-object v23

    .line 195
    const-string v0, "com.unity3d.services.core.api.Storage.getKeys"

    .line 196
    .line 197
    sget-object v1, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$14;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$14;

    .line 198
    .line 199
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 200
    .line 201
    .line 202
    move-result-object v24

    .line 203
    const-string v0, "com.unity3d.services.core.api.Storage.get"

    .line 204
    .line 205
    sget-object v1, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$15;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$15;

    .line 206
    .line 207
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 208
    .line 209
    .line 210
    move-result-object v25

    .line 211
    const-string v0, "com.unity3d.services.core.api.Storage.set"

    .line 212
    .line 213
    sget-object v1, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$16;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$16;

    .line 214
    .line 215
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 216
    .line 217
    .line 218
    move-result-object v26

    .line 219
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$17;

    .line 220
    .line 221
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$17;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 222
    .line 223
    .line 224
    const-string v1, "com.unity3d.services.ads.api.AdViewer.getPrivacyFsm"

    .line 225
    .line 226
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 227
    .line 228
    .line 229
    move-result-object v27

    .line 230
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$18;

    .line 231
    .line 232
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$18;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 233
    .line 234
    .line 235
    const-string v1, "com.unity3d.services.ads.api.AdViewer.setPrivacyFsm"

    .line 236
    .line 237
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 238
    .line 239
    .line 240
    move-result-object v28

    .line 241
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$19;

    .line 242
    .line 243
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$19;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 244
    .line 245
    .line 246
    const-string v1, "com.unity3d.services.ads.api.AdViewer.getPrivacyPayload"

    .line 247
    .line 248
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 249
    .line 250
    .line 251
    move-result-object v29

    .line 252
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$20;

    .line 253
    .line 254
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$20;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 255
    .line 256
    .line 257
    const-string v1, "com.unity3d.services.ads.api.AdViewer.setPrivacyPayload"

    .line 258
    .line 259
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 260
    .line 261
    .line 262
    move-result-object v30

    .line 263
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$21;

    .line 264
    .line 265
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$21;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 266
    .line 267
    .line 268
    const-string v1, "com.unity3d.services.ads.api.AdViewer.getPrivacyAllowedPii"

    .line 269
    .line 270
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 271
    .line 272
    .line 273
    move-result-object v31

    .line 274
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$22;

    .line 275
    .line 276
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$22;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 277
    .line 278
    .line 279
    const-string v1, "com.unity3d.services.ads.api.AdViewer.setPrivacyAllowedPii"

    .line 280
    .line 281
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 282
    .line 283
    .line 284
    move-result-object v32

    .line 285
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$23;

    .line 286
    .line 287
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$23;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 288
    .line 289
    .line 290
    const-string v1, "com.unity3d.services.ads.api.AdViewer.getSessionToken"

    .line 291
    .line 292
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 293
    .line 294
    .line 295
    move-result-object v33

    .line 296
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$24;

    .line 297
    .line 298
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$24;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 299
    .line 300
    .line 301
    const-string v1, "com.unity3d.services.ads.api.AdViewer.markCampaignStateAsShown"

    .line 302
    .line 303
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 304
    .line 305
    .line 306
    move-result-object v34

    .line 307
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$25;

    .line 308
    .line 309
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$25;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 310
    .line 311
    .line 312
    const-string v1, "com.unity3d.services.ads.api.AdViewer.refreshAdData"

    .line 313
    .line 314
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 315
    .line 316
    .line 317
    move-result-object v35

    .line 318
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$26;

    .line 319
    .line 320
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$26;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 321
    .line 322
    .line 323
    const-string v1, "com.unity3d.services.ads.api.AdViewer.updateCampaignState"

    .line 324
    .line 325
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 326
    .line 327
    .line 328
    move-result-object v36

    .line 329
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$27;

    .line 330
    .line 331
    invoke-direct {v0, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$27;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 332
    .line 333
    .line 334
    const-string v1, "com.unity3d.services.ads.api.AdViewer.updateTrackingToken"

    .line 335
    .line 336
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 337
    .line 338
    .line 339
    move-result-object v37

    .line 340
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$28;

    .line 341
    .line 342
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$28;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 343
    .line 344
    .line 345
    const-string v1, "com.unity3d.services.ads.api.AdViewer.sendPrivacyUpdateRequest"

    .line 346
    .line 347
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 348
    .line 349
    .line 350
    move-result-object v38

    .line 351
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$29;

    .line 352
    .line 353
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$29;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 354
    .line 355
    .line 356
    const-string v1, "com.unity3d.services.ads.api.AdViewer.sendDiagnosticEvent"

    .line 357
    .line 358
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 359
    .line 360
    .line 361
    move-result-object v39

    .line 362
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$30;

    .line 363
    .line 364
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$30;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 365
    .line 366
    .line 367
    const-string v1, "com.unity3d.services.ads.api.AdViewer.incrementBannerImpressionCount"

    .line 368
    .line 369
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 370
    .line 371
    .line 372
    move-result-object v40

    .line 373
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$31;

    .line 374
    .line 375
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$31;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 376
    .line 377
    .line 378
    const-string v1, "com.unity3d.services.ads.api.AdViewer.download"

    .line 379
    .line 380
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 381
    .line 382
    .line 383
    move-result-object v41

    .line 384
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$32;

    .line 385
    .line 386
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$32;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 387
    .line 388
    .line 389
    const-string v1, "com.unity3d.services.ads.api.AdViewer.isFileCached"

    .line 390
    .line 391
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 392
    .line 393
    .line 394
    move-result-object v42

    .line 395
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$33;

    .line 396
    .line 397
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$33;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 398
    .line 399
    .line 400
    const-string v1, "com.unity3d.services.ads.api.AdViewer.omidStartSession"

    .line 401
    .line 402
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 403
    .line 404
    .line 405
    move-result-object v43

    .line 406
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$34;

    .line 407
    .line 408
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$34;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 409
    .line 410
    .line 411
    const-string v1, "com.unity3d.services.ads.api.AdViewer.omidFinishSession"

    .line 412
    .line 413
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 414
    .line 415
    .line 416
    move-result-object v44

    .line 417
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$35;

    .line 418
    .line 419
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$35;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 420
    .line 421
    .line 422
    const-string v1, "com.unity3d.services.ads.api.AdViewer.omidImpression"

    .line 423
    .line 424
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 425
    .line 426
    .line 427
    move-result-object v45

    .line 428
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$36;

    .line 429
    .line 430
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$36;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 431
    .line 432
    .line 433
    const-string v1, "com.unity3d.services.ads.api.AdViewer.omidGetData"

    .line 434
    .line 435
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 436
    .line 437
    .line 438
    move-result-object v46

    .line 439
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$37;

    .line 440
    .line 441
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$37;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 442
    .line 443
    .line 444
    const-string v1, "com.unity3d.services.ads.api.AdViewer.isAttributionAvailable"

    .line 445
    .line 446
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 447
    .line 448
    .line 449
    move-result-object v47

    .line 450
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$38;

    .line 451
    .line 452
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$38;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 453
    .line 454
    .line 455
    const-string v1, "com.unity3d.services.ads.api.AdViewer.attributionRegisterView"

    .line 456
    .line 457
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 458
    .line 459
    .line 460
    move-result-object v48

    .line 461
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$39;

    .line 462
    .line 463
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$39;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 464
    .line 465
    .line 466
    const-string v1, "com.unity3d.services.ads.api.AdViewer.attributionRegisterClick"

    .line 467
    .line 468
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 469
    .line 470
    .line 471
    move-result-object v49

    .line 472
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$40;

    .line 473
    .line 474
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$40;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 475
    .line 476
    .line 477
    const-string v1, "com.unity3d.services.ads.api.AdViewer.loadScarAd"

    .line 478
    .line 479
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 480
    .line 481
    .line 482
    move-result-object v50

    .line 483
    const-string v0, "com.unity3d.services.ads.api.AdViewer.showScarAd"

    .line 484
    .line 485
    sget-object v1, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$41;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$41;

    .line 486
    .line 487
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 488
    .line 489
    .line 490
    move-result-object v51

    .line 491
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$42;

    .line 492
    .line 493
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$42;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 494
    .line 495
    .line 496
    const-string v1, "com.unity3d.services.ads.api.AdViewer.hbTokenIncrementWins"

    .line 497
    .line 498
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 499
    .line 500
    .line 501
    move-result-object v52

    .line 502
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$43;

    .line 503
    .line 504
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$43;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 505
    .line 506
    .line 507
    const-string v1, "com.unity3d.services.ads.api.AdViewer.hbTokenIncrementStarts"

    .line 508
    .line 509
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 510
    .line 511
    .line 512
    move-result-object v53

    .line 513
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$44;

    .line 514
    .line 515
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$44;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 516
    .line 517
    .line 518
    const-string v1, "com.unity3d.services.ads.api.AdViewer.hbTokenReset"

    .line 519
    .line 520
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 521
    .line 522
    .line 523
    move-result-object v54

    .line 524
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$45;

    .line 525
    .line 526
    invoke-direct {v0, v6, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$45;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 527
    .line 528
    .line 529
    const-string v1, "com.unity3d.services.ads.api.AdViewer.loadOfferwallAd"

    .line 530
    .line 531
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 532
    .line 533
    .line 534
    move-result-object v55

    .line 535
    const-string v0, "com.unity3d.services.ads.api.AdViewer.showOfferwallAd"

    .line 536
    .line 537
    sget-object v1, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$46;->INSTANCE:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$46;

    .line 538
    .line 539
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 540
    .line 541
    .line 542
    move-result-object v56

    .line 543
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$47;

    .line 544
    .line 545
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$47;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 546
    .line 547
    .line 548
    const-string v1, "com.unity3d.services.ads.api.AdViewer.isOfferwallAdReady"

    .line 549
    .line 550
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 551
    .line 552
    .line 553
    move-result-object v57

    .line 554
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$48;

    .line 555
    .line 556
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$48;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 557
    .line 558
    .line 559
    const-string v1, "com.unity3d.services.core.api.Request.get"

    .line 560
    .line 561
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 562
    .line 563
    .line 564
    move-result-object v58

    .line 565
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$49;

    .line 566
    .line 567
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$49;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 568
    .line 569
    .line 570
    const-string v1, "com.unity3d.services.core.api.Request.post"

    .line 571
    .line 572
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 573
    .line 574
    .line 575
    move-result-object v59

    .line 576
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$50;

    .line 577
    .line 578
    invoke-direct {v0, v6}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$50;-><init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V

    .line 579
    .line 580
    .line 581
    const-string v1, "com.unity3d.services.core.api.Request.head"

    .line 582
    .line 583
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 584
    .line 585
    .line 586
    move-result-object v60

    .line 587
    new-instance v0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$51;

    .line 588
    .line 589
    invoke-direct {v0, v8}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$51;-><init>(Lcom/unity3d/ads/core/data/model/AdObject;)V

    .line 590
    .line 591
    .line 592
    const-string v1, "com.unity3d.services.ads.api.AdViewer.setOpportunityTTL"

    .line 593
    .line 594
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 595
    .line 596
    .line 597
    move-result-object v61

    .line 598
    filled-new-array/range {v11 .. v61}, [Lkotlin/Pair;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-static {v0}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    new-instance v1, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$1;

    .line 607
    .line 608
    const/4 v2, 0x0

    .line 609
    invoke-direct {v1, v9, v2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$1;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 610
    .line 611
    .line 612
    invoke-static {v7, v1}, Lkotlinx/coroutines/flow/c;->Q(Lkt/f;Lkotlin/jvm/functions/Function2;)Lkt/f;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    new-instance v3, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$2;

    .line 617
    .line 618
    invoke-direct {v3, v0, v2}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$2;-><init>(Ljava/util/Map;Lrs/c;)V

    .line 619
    .line 620
    .line 621
    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    return-object v0
.end method
