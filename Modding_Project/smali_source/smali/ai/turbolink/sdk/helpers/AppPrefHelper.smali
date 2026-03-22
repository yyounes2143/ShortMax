.class public final Lai/turbolink/sdk/helpers/AppPrefHelper;
.super Ljava/lang/Object;
.source "AppPrefHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final APP_CAMPAIGN_BLACKBOX_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final APP_CAMPAIGN_CUSTOM_PARAMS:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final APP_CAMPAIGN_FULL_SCREEN:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final APP_CAMPAIGN_LANGUAGE_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final APP_CAMPAIGN_LV_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final APP_CAMPAIGN_PLATFORM_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final APP_CAMPAIGN_TIME_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final APP_CAMPAIGN_TOKEN_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final APP_CAMPAIGN_USER_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final APP_CAMPAIGN_VERSION_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CONNECT_TIMEOUT:I

.field private static final CURRENT_ENCRYPT_VERSION:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXECUTE_TIMEOUT:I

.field private static final IS_TURBOLINK_LINK_IDENTIFY:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IS_TURBOLINK_URL_IDENTIFY:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static KEY_APPKEY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static KEY_APPSECRET:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static KEY_SESSION_ID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static LAST_INTENT_VALUE:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final MAX_RETRIES:I

.field private static final NO_STRING_VALUE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static PROJECT_ID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final READ_TIMEOUT:I

.field private static final RETRIES_INTERVAL:I

.field private static final TURBOLINK_ATTRIBUTION_DOMAIN:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TURBOLINK_BASE_URL_V1:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TURBOLINK_BASE_URL_V2:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TURBOLINK_BASE_URL_V3:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WEBVIEW_INTENT_EXTRA_KEY:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static _appPrefHelper:Lai/turbolink/sdk/helpers/AppPrefHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final SHARED_PREFE_FILE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _appSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _appSharedpreferencesEditor:Landroid/content/SharedPreferences$Editor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 8
    .line 9
    const-string v0, "https://www.allapp.link/"

    .line 10
    .line 11
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->TURBOLINK_BASE_URL_V1:Ljava/lang/String;

    .line 12
    .line 13
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 14
    .line 15
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getRunEnvironment()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "test"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string v1, "https://test.allapp.link/v2/"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v1, "https://www.allapp.link/v2/"

    .line 31
    .line 32
    :goto_0
    sput-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->TURBOLINK_BASE_URL_V2:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getRunEnvironment()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string v0, "https://test.allapp.link/v3/"

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const-string v0, "https://www.allapp.link/v3/"

    .line 48
    .line 49
    :goto_1
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->TURBOLINK_BASE_URL_V3:Ljava/lang/String;

    .line 50
    .line 51
    const-string v0, "allapp"

    .line 52
    .line 53
    const-string v1, "branchcn"

    .line 54
    .line 55
    const-string v2, "turbolink"

    .line 56
    .line 57
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    sput-object v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->TURBOLINK_ATTRIBUTION_DOMAIN:[Ljava/lang/String;

    .line 62
    .line 63
    const/4 v3, 0x3

    .line 64
    sput v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->MAX_RETRIES:I

    .line 65
    .line 66
    const/16 v3, 0x3e8

    .line 67
    .line 68
    sput v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->RETRIES_INTERVAL:I

    .line 69
    .line 70
    const/16 v3, 0x1388

    .line 71
    .line 72
    sput v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->CONNECT_TIMEOUT:I

    .line 73
    .line 74
    sput v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->READ_TIMEOUT:I

    .line 75
    .line 76
    sput v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->EXECUTE_TIMEOUT:I

    .line 77
    .line 78
    const-string v3, ""

    .line 79
    .line 80
    sput-object v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->KEY_APPKEY:Ljava/lang/String;

    .line 81
    .line 82
    sput-object v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->KEY_APPSECRET:Ljava/lang/String;

    .line 83
    .line 84
    const-string v4, "tl_session_id"

    .line 85
    .line 86
    sput-object v4, Lai/turbolink/sdk/helpers/AppPrefHelper;->KEY_SESSION_ID:Ljava/lang/String;

    .line 87
    .line 88
    sput-object v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->PROJECT_ID:Ljava/lang/String;

    .line 89
    .line 90
    sput-object v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->NO_STRING_VALUE:Ljava/lang/String;

    .line 91
    .line 92
    const-string v10, "turbolink"

    .line 93
    .line 94
    const-string v11, "c-"

    .line 95
    .line 96
    const-string v5, "$"

    .line 97
    .line 98
    const-string v6, "\u00a5"

    .line 99
    .line 100
    const-string v7, "\uffe5"

    .line 101
    .line 102
    const-string v8, "allapp"

    .line 103
    .line 104
    const-string v9, "branchcn"

    .line 105
    .line 106
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    sput-object v3, Lai/turbolink/sdk/helpers/AppPrefHelper;->IS_TURBOLINK_LINK_IDENTIFY:[Ljava/lang/String;

    .line 111
    .line 112
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->IS_TURBOLINK_URL_IDENTIFY:[Ljava/lang/String;

    .line 117
    .line 118
    const-string v0, "tl_webview_extra_key"

    .line 119
    .line 120
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->WEBVIEW_INTENT_EXTRA_KEY:Ljava/lang/String;

    .line 121
    .line 122
    const-string v0, "1.2.0"

    .line 123
    .line 124
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->CURRENT_ENCRYPT_VERSION:Ljava/lang/String;

    .line 125
    .line 126
    const-string v0, "user_id"

    .line 127
    .line 128
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_USER_TAG:Ljava/lang/String;

    .line 129
    .line 130
    const-string v0, "lv"

    .line 131
    .line 132
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_LV_TAG:Ljava/lang/String;

    .line 133
    .line 134
    const-string v0, "lg"

    .line 135
    .line 136
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_LANGUAGE_TAG:Ljava/lang/String;

    .line 137
    .line 138
    const-string v0, "time"

    .line 139
    .line 140
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_TIME_TAG:Ljava/lang/String;

    .line 141
    .line 142
    const-string v0, "blackbox"

    .line 143
    .line 144
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_BLACKBOX_TAG:Ljava/lang/String;

    .line 145
    .line 146
    const-string v0, "version"

    .line 147
    .line 148
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_VERSION_TAG:Ljava/lang/String;

    .line 149
    .line 150
    const-string v0, "platform"

    .line 151
    .line 152
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_PLATFORM_TAG:Ljava/lang/String;

    .line 153
    .line 154
    const-string v0, "token"

    .line 155
    .line 156
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_TOKEN_TAG:Ljava/lang/String;

    .line 157
    .line 158
    const-string v0, "tl_full"

    .line 159
    .line 160
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_FULL_SCREEN:Ljava/lang/String;

    .line 161
    .line 162
    const-string v0, "tl_cps"

    .line 163
    .line 164
    sput-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_CUSTOM_PARAMS:Ljava/lang/String;

    .line 165
    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "turboLink_sdk_shared_pref"

    .line 10
    .line 11
    iput-object v0, p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->SHARED_PREFE_FILE:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->_context:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "context.getSharedPrefere\u2026LE, Context.MODE_PRIVATE)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->_appSharedPreferences:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "_appSharedPreferences.edit()"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->_appSharedpreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    return-void
.end method

.method public static final synthetic access$getAPP_CAMPAIGN_BLACKBOX_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_BLACKBOX_TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getAPP_CAMPAIGN_CUSTOM_PARAMS$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_CUSTOM_PARAMS:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getAPP_CAMPAIGN_FULL_SCREEN$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_FULL_SCREEN:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getAPP_CAMPAIGN_LANGUAGE_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_LANGUAGE_TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getAPP_CAMPAIGN_LV_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_LV_TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getAPP_CAMPAIGN_PLATFORM_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_PLATFORM_TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getAPP_CAMPAIGN_TIME_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_TIME_TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getAPP_CAMPAIGN_TOKEN_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_TOKEN_TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getAPP_CAMPAIGN_USER_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_USER_TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getAPP_CAMPAIGN_VERSION_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->APP_CAMPAIGN_VERSION_TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getCONNECT_TIMEOUT$cp()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->CONNECT_TIMEOUT:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getCURRENT_ENCRYPT_VERSION$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->CURRENT_ENCRYPT_VERSION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getEXECUTE_TIMEOUT$cp()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->EXECUTE_TIMEOUT:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getIS_TURBOLINK_LINK_IDENTIFY$cp()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->IS_TURBOLINK_LINK_IDENTIFY:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getIS_TURBOLINK_URL_IDENTIFY$cp()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->IS_TURBOLINK_URL_IDENTIFY:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getKEY_APPKEY$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->KEY_APPKEY:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getKEY_APPSECRET$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->KEY_APPSECRET:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getKEY_SESSION_ID$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->KEY_SESSION_ID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getLAST_INTENT_VALUE$cp()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->LAST_INTENT_VALUE:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMAX_RETRIES$cp()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->MAX_RETRIES:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getNO_STRING_VALUE$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->NO_STRING_VALUE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPROJECT_ID$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->PROJECT_ID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getREAD_TIMEOUT$cp()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->READ_TIMEOUT:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getRETRIES_INTERVAL$cp()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->RETRIES_INTERVAL:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getTURBOLINK_ATTRIBUTION_DOMAIN$cp()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->TURBOLINK_ATTRIBUTION_DOMAIN:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTURBOLINK_BASE_URL_V1$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->TURBOLINK_BASE_URL_V1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTURBOLINK_BASE_URL_V2$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->TURBOLINK_BASE_URL_V2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTURBOLINK_BASE_URL_V3$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->TURBOLINK_BASE_URL_V3:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getWEBVIEW_INTENT_EXTRA_KEY$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->WEBVIEW_INTENT_EXTRA_KEY:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$get_appPrefHelper$cp()Lai/turbolink/sdk/helpers/AppPrefHelper;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->_appPrefHelper:Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setKEY_APPKEY$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->KEY_APPKEY:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setKEY_APPSECRET$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->KEY_APPSECRET:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setKEY_SESSION_ID$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->KEY_SESSION_ID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setLAST_INTENT_VALUE$cp(Landroid/net/Uri;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->LAST_INTENT_VALUE:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPROJECT_ID$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->PROJECT_ID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$set_appPrefHelper$cp(Lai/turbolink/sdk/helpers/AppPrefHelper;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->_appPrefHelper:Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->_appSharedPreferences:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final isAppNewInstall()Z
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/device/DeviceId;->Companion:Lai/turbolink/sdk/device/DeviceId$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/device/DeviceId$Companion;->getKEY_TURBOLINK_BUNDLE_DEVICEID()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lai/turbolink/sdk/helpers/AppPrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final setAppKey(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lai/turbolink/sdk/helpers/AppPrefHelper;->KEY_APPKEY:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public final setAppSecret(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lai/turbolink/sdk/helpers/AppPrefHelper;->KEY_APPSECRET:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public final setProjectID(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "projectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lai/turbolink/sdk/helpers/AppPrefHelper;->PROJECT_ID:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1
.end method

.method public final setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lai/turbolink/sdk/helpers/AppPrefHelper;->_appSharedpreferencesEditor:Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
