.class public final Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;
.super Ljava/lang/Object;
.source "AndroidGetClientInfo.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetClientInfo;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidGetClientInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetClientInfo.kt\ncom/unity3d/ads/core/domain/AndroidGetClientInfo\n+ 2 ClientInfoKt.kt\ngatewayprotocol/v1/ClientInfoKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,53:1\n10#2:54\n1#3:55\n1#3:56\n*S KotlinDebug\n*F\n+ 1 AndroidGetClientInfo.kt\ncom/unity3d/ads/core/domain/AndroidGetClientInfo\n*L\n25#1:54\n25#1:55\n*E\n"
    }
.end annotation


# instance fields
.field private final fIdExistenceDataSource:Lcom/unity3d/ads/core/data/datasource/FIdExistenceDataSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediationRepository:Lcom/unity3d/ads/core/data/repository/MediationRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final omidManager:Lcom/unity3d/ads/core/data/manager/OmidManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scarManager:Lcom/unity3d/ads/core/data/manager/ScarManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/MediationRepository;Lcom/unity3d/ads/core/data/manager/OmidManager;Lcom/unity3d/ads/core/data/manager/ScarManager;Lcom/unity3d/ads/core/data/manager/OfferwallManager;Lcom/unity3d/ads/core/data/datasource/FIdExistenceDataSource;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/repository/SessionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/data/repository/MediationRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/data/manager/OmidManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/unity3d/ads/core/data/manager/ScarManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/unity3d/ads/core/data/manager/OfferwallManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/unity3d/ads/core/data/datasource/FIdExistenceDataSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sessionRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mediationRepository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "omidManager"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "scarManager"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "offerwallManager"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "fIdExistenceDataSource"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->mediationRepository:Lcom/unity3d/ads/core/data/repository/MediationRepository;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->omidManager:Lcom/unity3d/ads/core/data/manager/OmidManager;

    .line 39
    .line 40
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->scarManager:Lcom/unity3d/ads/core/data/manager/ScarManager;

    .line 41
    .line 42
    iput-object p5, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;

    .line 43
    .line 44
    iput-object p6, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->fIdExistenceDataSource:Lcom/unity3d/ads/core/data/datasource/FIdExistenceDataSource;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public invoke(Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;-><init>(Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object v1, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$2:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lgatewayprotocol/v1/ClientInfoKt$Dsl;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Lgatewayprotocol/v1/ClientInfoKt$Dsl;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_2
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$2:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Lgatewayprotocol/v1/ClientInfoKt$Dsl;

    .line 69
    .line 70
    iget-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v4, Lgatewayprotocol/v1/ClientInfoKt$Dsl;

    .line 73
    .line 74
    iget-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v5, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;

    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object p1, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->Companion:Lgatewayprotocol/v1/ClientInfoKt$Dsl$Companion;

    .line 87
    .line 88
    invoke-static {}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;->newBuilder()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v5, "newBuilder()"

    .line 93
    .line 94
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2}, Lgatewayprotocol/v1/ClientInfoKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;)Lgatewayprotocol/v1/ClientInfoKt$Dsl;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const v2, 0xa281

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setSdkVersion(I)V

    .line 105
    .line 106
    .line 107
    const-string v2, "4.16.1"

    .line 108
    .line 109
    invoke-virtual {p1, v2}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setSdkVersionName(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 113
    .line 114
    invoke-interface {v2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->getGameId()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_4

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setGameId(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->sessionRepository:Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 124
    .line 125
    invoke-interface {v2}, Lcom/unity3d/ads/core/data/repository/SessionRepository;->isTestModeEnabled()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    invoke-virtual {p1, v2}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setTest(Z)V

    .line 130
    .line 131
    .line 132
    sget-object v2, Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;->PLATFORM_ANDROID:Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;

    .line 133
    .line 134
    invoke-virtual {p1, v2}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setPlatform(Lgatewayprotocol/v1/ClientInfoOuterClass$Platform;)V

    .line 135
    .line 136
    .line 137
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->mediationRepository:Lcom/unity3d/ads/core/data/repository/MediationRepository;

    .line 138
    .line 139
    invoke-interface {v2}, Lcom/unity3d/ads/core/data/repository/MediationRepository;->getMediationProvider()Lkotlin/jvm/functions/Function0;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 148
    .line 149
    invoke-virtual {p1, v2}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setMediationProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->mediationRepository:Lcom/unity3d/ads/core/data/repository/MediationRepository;

    .line 153
    .line 154
    invoke-interface {v2}, Lcom/unity3d/ads/core/data/repository/MediationRepository;->getName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_5

    .line 159
    .line 160
    invoke-virtual {p1}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->getMediationProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    sget-object v6, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->MEDIATION_PROVIDER_CUSTOM:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    .line 165
    .line 166
    if-ne v5, v6, :cond_5

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setCustomMediationName(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_5
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->mediationRepository:Lcom/unity3d/ads/core/data/repository/MediationRepository;

    .line 172
    .line 173
    invoke-interface {v2}, Lcom/unity3d/ads/core/data/repository/MediationRepository;->getVersion()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    if-eqz v2, :cond_6

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setMediationVersion(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->scarManager:Lcom/unity3d/ads/core/data/manager/ScarManager;

    .line 183
    .line 184
    iput-object p0, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$0:Ljava/lang/Object;

    .line 185
    .line 186
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$1:Ljava/lang/Object;

    .line 187
    .line 188
    iput-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$2:Ljava/lang/Object;

    .line 189
    .line 190
    iput v4, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->label:I

    .line 191
    .line 192
    invoke-interface {v2, v0}, Lcom/unity3d/ads/core/data/manager/ScarManager;->getVersion(Lrs/c;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    if-ne v2, v1, :cond_7

    .line 197
    .line 198
    return-object v1

    .line 199
    :cond_7
    move-object v5, p0

    .line 200
    move-object v4, p1

    .line 201
    move-object p1, v2

    .line 202
    move-object v2, v4

    .line 203
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 204
    .line 205
    if-eqz p1, :cond_8

    .line 206
    .line 207
    invoke-virtual {v2, p1}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setScarVersionName(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    iget-object p1, v5, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->offerwallManager:Lcom/unity3d/ads/core/data/manager/OfferwallManager;

    .line 211
    .line 212
    iput-object v5, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$0:Ljava/lang/Object;

    .line 213
    .line 214
    iput-object v4, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$1:Ljava/lang/Object;

    .line 215
    .line 216
    iput-object v2, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->L$2:Ljava/lang/Object;

    .line 217
    .line 218
    iput v3, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo$invoke$1;->label:I

    .line 219
    .line 220
    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/data/manager/OfferwallManager;->getVersion(Lrs/c;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    if-ne p1, v1, :cond_9

    .line 225
    .line 226
    return-object v1

    .line 227
    :cond_9
    move-object v1, v2

    .line 228
    move-object v2, v4

    .line 229
    move-object v0, v5

    .line 230
    :goto_2
    check-cast p1, Ljava/lang/String;

    .line 231
    .line 232
    if-eqz p1, :cond_a

    .line 233
    .line 234
    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setOfferwallVersion(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_a
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->omidManager:Lcom/unity3d/ads/core/data/manager/OmidManager;

    .line 238
    .line 239
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/manager/OmidManager;->getVersion()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setOmidVersion(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string p1, "1"

    .line 247
    .line 248
    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setOmidPartnerVersion(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-static {}, Lcom/unity3d/services/core/properties/MadeWithUnityDetector;->isMadeWithUnity()Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-eqz p1, :cond_b

    .line 256
    .line 257
    const-string p1, "Unity"

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_b
    const-string p1, ""

    .line 261
    .line 262
    :goto_3
    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setSdkDevelopmentPlatform(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object p1, v0, Lcom/unity3d/ads/core/domain/AndroidGetClientInfo;->fIdExistenceDataSource:Lcom/unity3d/ads/core/data/datasource/FIdExistenceDataSource;

    .line 266
    .line 267
    invoke-interface {p1}, Lcom/unity3d/ads/core/data/datasource/FIdExistenceDataSource;->invoke()Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->setIsFidAvailable(Z)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2}, Lgatewayprotocol/v1/ClientInfoKt$Dsl;->_build()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    return-object p1
.end method
