.class public final Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;
.super Ljava/lang/Object;
.source "AndroidGetInitializationRequestPayload.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetInitializationRequestPayload;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidGetInitializationRequestPayload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetInitializationRequestPayload.kt\ncom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload\n+ 2 InitializationRequestKt.kt\ngatewayprotocol/v1/InitializationRequestKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 InitializationDeviceInfoKt.kt\ngatewayprotocol/v1/InitializationDeviceInfoKtKt\n+ 5 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n*L\n1#1,70:1\n10#2:71\n1#3:72\n1#3:73\n1#3:75\n10#4:74\n7#5,7:76\n*S KotlinDebug\n*F\n+ 1 AndroidGetInitializationRequestPayload.kt\ncom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload\n*L\n20#1:71\n20#1:72\n28#1:75\n28#1:74\n65#1:76,7\n*E\n"
    }
.end annotation


# instance fields
.field private final deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getClientInfo:Lcom/unity3d/ads/core/domain/GetClientInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final legacyUserConsentRepository:Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediationInitBlobMetadataReader:Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/domain/GetClientInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "getClientInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "deviceInfoRepository"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "legacyUserConsentRepository"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "mediationInitBlobMetadataReader"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->getClientInfo:Lcom/unity3d/ads/core/domain/GetClientInfo;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->legacyUserConsentRepository:Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->mediationInitBlobMetadataReader:Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public invoke(Lrs/c;)Ljava/lang/Object;
    .locals 23
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->label:I

    .line 36
    .line 37
    const-string v5, "newBuilder()"

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x1

    .line 41
    const/4 v8, 0x0

    .line 42
    packed-switch v4, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :pswitch_0
    iget-object v3, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v3, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 56
    .line 57
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v4, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 60
    .line 61
    iget-object v2, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;

    .line 64
    .line 65
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_b

    .line 69
    .line 70
    :pswitch_1
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v4, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 73
    .line 74
    iget-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 77
    .line 78
    iget-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v6, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;

    .line 81
    .line 82
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_a

    .line 86
    .line 87
    :pswitch_2
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v4, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 90
    .line 91
    iget-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v5, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 94
    .line 95
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v9, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;

    .line 98
    .line 99
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_9

    .line 103
    .line 104
    :pswitch_3
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v4, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 107
    .line 108
    iget-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v5, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 111
    .line 112
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v9, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;

    .line 115
    .line 116
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_8

    .line 120
    .line 121
    :pswitch_4
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$6:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v4, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;

    .line 124
    .line 125
    iget-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$5:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v5, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;

    .line 128
    .line 129
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$4:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v9, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 132
    .line 133
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$3:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v10, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;

    .line 136
    .line 137
    iget-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v11, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 140
    .line 141
    iget-object v12, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v12, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 144
    .line 145
    iget-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;

    .line 148
    .line 149
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_7

    .line 153
    .line 154
    :pswitch_5
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$6:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast v4, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;

    .line 157
    .line 158
    iget-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$5:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v5, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;

    .line 161
    .line 162
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$4:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v9, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 165
    .line 166
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$3:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v10, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;

    .line 169
    .line 170
    iget-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v11, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 173
    .line 174
    iget-object v12, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v12, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 177
    .line 178
    iget-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;

    .line 181
    .line 182
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_6

    .line 186
    .line 187
    :pswitch_6
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$3:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v4, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 190
    .line 191
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v9, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 194
    .line 195
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v10, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 198
    .line 199
    iget-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v11, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;

    .line 202
    .line 203
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_5

    .line 207
    .line 208
    :pswitch_7
    iget-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$3:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v4, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 211
    .line 212
    iget-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v9, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 215
    .line 216
    iget-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v10, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 219
    .line 220
    iget-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v11, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;

    .line 223
    .line 224
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :pswitch_8
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    sget-object v1, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;

    .line 232
    .line 233
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->newBuilder()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v4}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;)Lgatewayprotocol/v1/InitializationRequestKt$Dsl;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    sget-object v1, Lcom/unity3d/services/core/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    .line 245
    .line 246
    invoke-static {v1}, Lcom/unity3d/services/core/device/StorageManager;->getStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/device/Storage;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lcom/unity3d/services/core/device/Storage;->readStorage()Z

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    if-eqz v9, :cond_3

    .line 255
    .line 256
    const-string v9, "configuration.hasInitialized"

    .line 257
    .line 258
    invoke-virtual {v1, v9}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    instance-of v9, v1, Ljava/lang/Boolean;

    .line 263
    .line 264
    if-eqz v9, :cond_1

    .line 265
    .line 266
    check-cast v1, Ljava/lang/Boolean;

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_1
    move-object v1, v8

    .line 270
    :goto_1
    if-eqz v1, :cond_2

    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    goto :goto_2

    .line 277
    :cond_2
    move v1, v6

    .line 278
    :goto_2
    if-eqz v1, :cond_3

    .line 279
    .line 280
    move v1, v7

    .line 281
    goto :goto_3

    .line 282
    :cond_3
    move v1, v6

    .line 283
    :goto_3
    xor-int/2addr v1, v7

    .line 284
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setIsFirstInit(Z)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->getClientInfo:Lcom/unity3d/ads/core/domain/GetClientInfo;

    .line 288
    .line 289
    iput-object v0, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 290
    .line 291
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 292
    .line 293
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 294
    .line 295
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$3:Ljava/lang/Object;

    .line 296
    .line 297
    iput v7, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->label:I

    .line 298
    .line 299
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/domain/GetClientInfo;->invoke(Lrs/c;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    if-ne v1, v3, :cond_4

    .line 304
    .line 305
    return-object v3

    .line 306
    :cond_4
    move-object v11, v0

    .line 307
    move-object v9, v4

    .line 308
    move-object v10, v9

    .line 309
    :goto_4
    check-cast v1, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    .line 310
    .line 311
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setClientInfo(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    .line 312
    .line 313
    .line 314
    iget-object v1, v11, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 315
    .line 316
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 317
    .line 318
    iput-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 319
    .line 320
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 321
    .line 322
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$3:Ljava/lang/Object;

    .line 323
    .line 324
    const/4 v4, 0x2

    .line 325
    iput v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->label:I

    .line 326
    .line 327
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getIdfi(Lrs/c;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    if-ne v1, v3, :cond_5

    .line 332
    .line 333
    return-object v3

    .line 334
    :cond_5
    move-object v4, v9

    .line 335
    :goto_5
    check-cast v1, Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setIdfi(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, v11, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 341
    .line 342
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getAnalyticsUserId()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    if-eqz v1, :cond_6

    .line 347
    .line 348
    invoke-virtual {v9, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setAnalyticsUserId(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :cond_6
    iget-object v1, v11, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 352
    .line 353
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getSessionId()Lcom/google/protobuf/ByteString;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v9, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setSessionId(Lcom/google/protobuf/ByteString;)V

    .line 358
    .line 359
    .line 360
    sget-object v1, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->Companion:Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl$Companion;

    .line 361
    .line 362
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;->newBuilder()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v4}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;)Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    iget-object v1, v11, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 374
    .line 375
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getAppName()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setBundleId(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object v1, v11, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 383
    .line 384
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getModel()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setDeviceModel(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v1, v11, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 392
    .line 393
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getManufacturer()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setDeviceMake(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    iget-object v1, v11, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 401
    .line 402
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getOsVersion()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setOsVersion(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v11, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 410
    .line 411
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 412
    .line 413
    iput-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 414
    .line 415
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 416
    .line 417
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$3:Ljava/lang/Object;

    .line 418
    .line 419
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$4:Ljava/lang/Object;

    .line 420
    .line 421
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$5:Ljava/lang/Object;

    .line 422
    .line 423
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$6:Ljava/lang/Object;

    .line 424
    .line 425
    const/4 v5, 0x3

    .line 426
    iput v5, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->label:I

    .line 427
    .line 428
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->staticDeviceInfo(Lrs/c;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    if-ne v1, v3, :cond_7

    .line 433
    .line 434
    return-object v3

    .line 435
    :cond_7
    move-object v5, v4

    .line 436
    move-object v12, v10

    .line 437
    move-object v13, v11

    .line 438
    move-object v10, v5

    .line 439
    move-object v11, v9

    .line 440
    :goto_6
    check-cast v1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 441
    .line 442
    invoke-virtual {v1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getTotalDiskSpace()J

    .line 443
    .line 444
    .line 445
    move-result-wide v14

    .line 446
    invoke-virtual {v4, v14, v15}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setTotalDiskSpace(J)V

    .line 447
    .line 448
    .line 449
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 450
    .line 451
    iput-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 452
    .line 453
    iput-object v12, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 454
    .line 455
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 456
    .line 457
    iput-object v10, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$3:Ljava/lang/Object;

    .line 458
    .line 459
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$4:Ljava/lang/Object;

    .line 460
    .line 461
    iput-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$5:Ljava/lang/Object;

    .line 462
    .line 463
    iput-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$6:Ljava/lang/Object;

    .line 464
    .line 465
    const/4 v4, 0x4

    .line 466
    iput v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->label:I

    .line 467
    .line 468
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->staticDeviceInfo(Lrs/c;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    if-ne v1, v3, :cond_8

    .line 473
    .line 474
    return-object v3

    .line 475
    :cond_8
    move-object v4, v5

    .line 476
    :goto_7
    check-cast v1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    .line 477
    .line 478
    invoke-virtual {v1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;->getTotalRamMemory()J

    .line 479
    .line 480
    .line 481
    move-result-wide v14

    .line 482
    invoke-virtual {v4, v14, v15}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setTotalRamMemory(J)V

    .line 483
    .line 484
    .line 485
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 486
    .line 487
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getCurrentUiTheme()I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    int-to-long v14, v1

    .line 492
    invoke-virtual {v5, v14, v15}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setCurrentUiTheme(J)V

    .line 493
    .line 494
    .line 495
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 496
    .line 497
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-virtual {v1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getNetworkOperator()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    const-string v4, "deviceInfoRepository.dyn\u2026eviceInfo.networkOperator"

    .line 506
    .line 507
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v5, v1}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setNetworkOperator(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 514
    .line 515
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getBatteryLevel()D

    .line 520
    .line 521
    .line 522
    move-result-wide v14

    .line 523
    invoke-virtual {v5, v14, v15}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setBatteryLevel(D)V

    .line 524
    .line 525
    .line 526
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 527
    .line 528
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-virtual {v1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getBatteryStatus()I

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    invoke-virtual {v5, v1}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setBatteryStatus(I)V

    .line 537
    .line 538
    .line 539
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 540
    .line 541
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getSystemBootTime()J

    .line 542
    .line 543
    .line 544
    move-result-wide v14

    .line 545
    invoke-virtual {v5, v14, v15}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setSystemBootTime(J)V

    .line 546
    .line 547
    .line 548
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 549
    .line 550
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-virtual {v1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;->getLanguage()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    const-string v4, "deviceInfoRepository.dynamicDeviceInfo.language"

    .line 559
    .line 560
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v5, v1}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setLanguage(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 567
    .line 568
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getLocaleList()Ljava/util/List;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    move-object v14, v1

    .line 573
    check-cast v14, Ljava/lang/Iterable;

    .line 574
    .line 575
    const/16 v21, 0x3e

    .line 576
    .line 577
    const/16 v22, 0x0

    .line 578
    .line 579
    const-string v15, ","

    .line 580
    .line 581
    const/16 v16, 0x0

    .line 582
    .line 583
    const/16 v17, 0x0

    .line 584
    .line 585
    const/16 v18, 0x0

    .line 586
    .line 587
    const/16 v19, 0x0

    .line 588
    .line 589
    const/16 v20, 0x0

    .line 590
    .line 591
    invoke-static/range {v14 .. v22}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-virtual {v5, v1}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setLocalList(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 599
    .line 600
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getConnectionTypeStr()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    invoke-virtual {v5, v1}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->setConnectionType(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v10}, Lgatewayprotocol/v1/InitializationDeviceInfoKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    invoke-virtual {v9, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setDeviceInfo(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V

    .line 612
    .line 613
    .line 614
    iget-object v1, v13, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 615
    .line 616
    iput-object v13, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 617
    .line 618
    iput-object v12, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 619
    .line 620
    iput-object v11, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 621
    .line 622
    iput-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$3:Ljava/lang/Object;

    .line 623
    .line 624
    iput-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$4:Ljava/lang/Object;

    .line 625
    .line 626
    iput-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$5:Ljava/lang/Object;

    .line 627
    .line 628
    iput-object v8, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$6:Ljava/lang/Object;

    .line 629
    .line 630
    const/4 v4, 0x5

    .line 631
    iput v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->label:I

    .line 632
    .line 633
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getAuidByteString(Lrs/c;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    if-ne v1, v3, :cond_9

    .line 638
    .line 639
    return-object v3

    .line 640
    :cond_9
    move-object v4, v11

    .line 641
    move-object v5, v12

    .line 642
    move-object v9, v13

    .line 643
    :goto_8
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 644
    .line 645
    if-eqz v1, :cond_a

    .line 646
    .line 647
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setAuid(Lcom/google/protobuf/ByteString;)V

    .line 648
    .line 649
    .line 650
    :cond_a
    iget-object v1, v9, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->deviceInfoRepository:Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    .line 651
    .line 652
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 653
    .line 654
    iput-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 655
    .line 656
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 657
    .line 658
    const/4 v10, 0x6

    .line 659
    iput v10, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->label:I

    .line 660
    .line 661
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;->getAuidString(Lrs/c;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    if-ne v1, v3, :cond_b

    .line 666
    .line 667
    return-object v3

    .line 668
    :cond_b
    :goto_9
    check-cast v1, Ljava/lang/String;

    .line 669
    .line 670
    if-eqz v1, :cond_c

    .line 671
    .line 672
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 673
    .line 674
    .line 675
    move-result v10

    .line 676
    if-nez v10, :cond_d

    .line 677
    .line 678
    :cond_c
    move v6, v7

    .line 679
    :cond_d
    if-nez v6, :cond_e

    .line 680
    .line 681
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setAuidString(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    :cond_e
    iget-object v1, v9, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 685
    .line 686
    iput-object v9, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 687
    .line 688
    iput-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 689
    .line 690
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 691
    .line 692
    const/4 v6, 0x7

    .line 693
    iput v6, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->label:I

    .line 694
    .line 695
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getPrivacy(Lrs/c;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    if-ne v1, v3, :cond_f

    .line 700
    .line 701
    return-object v3

    .line 702
    :cond_f
    move-object v6, v9

    .line 703
    :goto_a
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 704
    .line 705
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 706
    .line 707
    .line 708
    move-result v7

    .line 709
    if-nez v7, :cond_10

    .line 710
    .line 711
    invoke-virtual {v4, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setPrivacy(Lcom/google/protobuf/ByteString;)V

    .line 712
    .line 713
    .line 714
    :cond_10
    iget-object v1, v6, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 715
    .line 716
    iput-object v6, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$0:Ljava/lang/Object;

    .line 717
    .line 718
    iput-object v5, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$1:Ljava/lang/Object;

    .line 719
    .line 720
    iput-object v4, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->L$2:Ljava/lang/Object;

    .line 721
    .line 722
    const/16 v7, 0x8

    .line 723
    .line 724
    iput v7, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload$invoke$1;->label:I

    .line 725
    .line 726
    invoke-interface {v1, v2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getGatewayCache(Lrs/c;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    if-ne v1, v3, :cond_11

    .line 731
    .line 732
    return-object v3

    .line 733
    :cond_11
    move-object v3, v4

    .line 734
    move-object v4, v5

    .line 735
    move-object v2, v6

    .line 736
    :goto_b
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 737
    .line 738
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    .line 739
    .line 740
    .line 741
    move-result v5

    .line 742
    if-nez v5, :cond_12

    .line 743
    .line 744
    invoke-virtual {v3, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setCache(Lcom/google/protobuf/ByteString;)V

    .line 745
    .line 746
    .line 747
    :cond_12
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->mediationInitBlobMetadataReader:Lcom/unity3d/ads/core/configuration/MediationInitBlobMetadataReader;

    .line 748
    .line 749
    invoke-virtual {v1}, Lcom/unity3d/ads/core/configuration/MetadataReader;->getJsonStorage()Lcom/unity3d/services/core/misc/JsonStorage;

    .line 750
    .line 751
    .line 752
    move-result-object v5

    .line 753
    invoke-virtual {v1}, Lcom/unity3d/ads/core/configuration/MetadataReader;->getKey()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v1

    .line 757
    invoke-virtual {v5, v1}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    if-eqz v1, :cond_15

    .line 762
    .line 763
    const-string v5, "get(key)"

    .line 764
    .line 765
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    instance-of v5, v1, Ljava/lang/String;

    .line 769
    .line 770
    if-eqz v5, :cond_13

    .line 771
    .line 772
    goto :goto_c

    .line 773
    :cond_13
    move-object v1, v8

    .line 774
    :goto_c
    if-nez v1, :cond_14

    .line 775
    .line 776
    goto :goto_d

    .line 777
    :cond_14
    move-object v8, v1

    .line 778
    :cond_15
    :goto_d
    check-cast v8, Ljava/lang/String;

    .line 779
    .line 780
    if-eqz v8, :cond_16

    .line 781
    .line 782
    invoke-static {v8}, Lcom/google/protobuf/kotlin/ByteStringsKt;->toByteStringUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    invoke-virtual {v3, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setUadsInitBlob(Lcom/google/protobuf/ByteString;)V

    .line 787
    .line 788
    .line 789
    :cond_16
    iget-object v1, v2, Lcom/unity3d/ads/core/domain/AndroidGetInitializationRequestPayload;->legacyUserConsentRepository:Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;

    .line 790
    .line 791
    invoke-interface {v1}, Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;->getLegacyFlowUserConsent()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    if-eqz v1, :cond_17

    .line 796
    .line 797
    invoke-virtual {v3, v1}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->setLegacyFlowUserConsent(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    :cond_17
    invoke-virtual {v4}, Lgatewayprotocol/v1/InitializationRequestKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    return-object v1

    .line 805
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
