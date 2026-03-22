.class public final Lai/turbolink/sdk/request/assistance/SDKVerify;
.super Ljava/lang/Object;
.source "SDKVerify.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/request/assistance/SDKVerify$SDKLaunchEventSeq;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/request/assistance/SDKVerify;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai/turbolink/sdk/request/assistance/SDKVerify;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/request/assistance/SDKVerify;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/request/assistance/SDKVerify;->INSTANCE:Lai/turbolink/sdk/request/assistance/SDKVerify;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 14
    .line 15
    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getTURBOLINK_BASE_URL_V2()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    sget-object v1, Lai/turbolink/sdk/request/ServerRequestPath;->POST_SDK_VERIFY_INFO:Lai/turbolink/sdk/request/ServerRequestPath;

    .line 23
    .line 24
    invoke-virtual {v1}, Lai/turbolink/sdk/request/ServerRequestPath;->getPath()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lai/turbolink/sdk/request/assistance/SDKVerify;->url:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$check(Lai/turbolink/sdk/request/assistance/SDKVerify;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lai/turbolink/sdk/request/assistance/SDKVerify;->check()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final check()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 7
    .line 8
    invoke-virtual {v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getPROJECT_ID()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "project_id"

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lai/turbolink/sdk/request/assistance/SDKVerify;->getAndroidObj()Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "android"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    sget-object v1, Lai/turbolink/sdk/request/ServerRequestSync;->INSTANCE:Lai/turbolink/sdk/request/ServerRequestSync;

    .line 27
    .line 28
    sget-object v2, Lai/turbolink/sdk/request/assistance/SDKVerify;->url:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v3, Lai/turbolink/sdk/request/assistance/SDKVerify$check$1;

    .line 31
    .line 32
    invoke-direct {v3}, Lai/turbolink/sdk/request/assistance/SDKVerify$check$1;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2, v0, v3}, Lai/turbolink/sdk/request/ServerRequestSync;->doFreedomReq(Ljava/lang/String;Lorg/json/JSONObject;Lai/turbolink/sdk/request/campaign/CampaignInfo$TurboLinkCampaignCallback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final getAndroidObj()Lorg/json/JSONObject;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lai/turbolink/sdk/utils/TurboLinkUtil;->INSTANCE:Lai/turbolink/sdk/utils/TurboLinkUtil;

    .line 7
    .line 8
    sget-object v2, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 9
    .line 10
    invoke-virtual {v2}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getKEY_APPKEY()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v1, v3}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "app_key"

    .line 19
    .line 20
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getKEY_APPSECRET()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "app_secret"

    .line 32
    .line 33
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    sget-object v2, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->INSTANCE:Lai/turbolink/sdk/TurboLink$SDKAccessInfo;

    .line 37
    .line 38
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getEnableDelayInit()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "enable_delay_init"

    .line 43
    .line 44
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    .line 46
    .line 47
    const-string v3, "install_event_status"

    .line 48
    .line 49
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getInstallEventStatus()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    const-string v3, "language"

    .line 57
    .line 58
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getAppLanguage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    sget-object v3, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 66
    .line 67
    invoke-virtual {v3}, Lai/turbolink/sdk/TurboLink$Companion;->getSdkType()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const-string v5, "sdk_type"

    .line 72
    .line 73
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    const-string v4, "package_name"

    .line 77
    .line 78
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    const-string v4, "login_event_status"

    .line 86
    .line 87
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getLoginEventStatus()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v4, "logout_event_status"

    .line 95
    .line 96
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getLogoutEventStatus()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    const-string v4, "register_event_status"

    .line 104
    .line 105
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getRegisterEventStatus()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    const-string v4, "set_callback_before_init"

    .line 113
    .line 114
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSetCallbackBeforeInit()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    if-eqz v4, :cond_1

    .line 126
    .line 127
    invoke-virtual {v3}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    if-eqz v3, :cond_0

    .line 132
    .line 133
    invoke-virtual {v3}, Lai/turbolink/sdk/TurboLink;->getApplicationContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    goto :goto_0

    .line 138
    :cond_0
    const/4 v3, 0x0

    .line 139
    :goto_0
    if-eqz v3, :cond_1

    .line 140
    .line 141
    sget-object v4, Lai/turbolink/sdk/TurboLink$SessionObj;->INSTANCE:Lai/turbolink/sdk/TurboLink$SessionObj;

    .line 142
    .line 143
    invoke-virtual {v4}, Lai/turbolink/sdk/TurboLink$SessionObj;->getVerifyScheme()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v1, v3, v5}, Lai/turbolink/sdk/utils/TurboLinkUtil;->checkExistScheme(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v4}, Lai/turbolink/sdk/TurboLink$SessionObj;->getVerifyAppLinks()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v1, v3, v4}, Lai/turbolink/sdk/utils/TurboLinkUtil;->checkExistAppLinks(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    sget-object v6, Lai/turbolink/sdk/device/SystemObserver;->Companion:Lai/turbolink/sdk/device/SystemObserver$Companion;

    .line 160
    .line 161
    invoke-virtual {v6, v3}, Lai/turbolink/sdk/device/SystemObserver$Companion;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    const-string v6, "device_id"

    .line 166
    .line 167
    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_1
    const-string v5, ""

    .line 172
    .line 173
    move-object v4, v5

    .line 174
    :goto_1
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSchemes()Lorg/json/JSONArray;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getAppLinks()Lorg/json/JSONArray;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    .line 187
    .line 188
    const-string v3, "schemes"

    .line 189
    .line 190
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSchemes()Lorg/json/JSONArray;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    .line 196
    .line 197
    const-string v3, "app_links"

    .line 198
    .line 199
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getAppLinks()Lorg/json/JSONArray;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2}, Lai/turbolink/sdk/TurboLink$SDKAccessInfo;->getSdkLaunchEventSequence()Lorg/json/JSONArray;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    const/16 v3, 0x14

    .line 211
    .line 212
    invoke-virtual {v1, v2, v3}, Lai/turbolink/sdk/utils/TurboLinkUtil;->getJsonArrayTopItems(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const-string v2, "session_record"

    .line 217
    .line 218
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    .line 220
    .line 221
    return-object v0
.end method


# virtual methods
.method public final launchCheck()V
    .locals 7

    .line 1
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v4, Lai/turbolink/sdk/request/assistance/SDKVerify$launchCheck$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {v4, v0}, Lai/turbolink/sdk/request/assistance/SDKVerify$launchCheck$1;-><init>(Lrs/c;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    return-void
.end method
