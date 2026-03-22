.class public Landroidx/webkit/internal/WebViewFeatureInternal;
.super Ljava/lang/Object;
.source "WebViewFeatureInternal.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnsafeOptInUsageError"
    }
.end annotation


# static fields
.field public static final ADD_QUIC_HINTS_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ALGORITHMIC_DARKENING:Landroidx/webkit/internal/ApiFeature$T;

.field public static final ASYNC_WEBVIEW_STARTUP:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ATTRIBUTION_REGISTRATION_BEHAVIOR:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final BACK_FORWARD_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final BACK_FORWARD_CACHE_SETTINGS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final COOKIE_INTERCEPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/ApiFeature$M;

.field public static final CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final DEFAULT_TRAFFICSTATS_TAGGING:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final DELETE_BROWSING_DATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final DOCUMENT_START_SCRIPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final FORCE_DARK:Landroidx/webkit/internal/ApiFeature$Q;

.field public static final FORCE_DARK_STRATEGY:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final GET_COOKIE_INFO:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final GET_VARIATIONS_HEADER:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

.field public static final GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

.field public static final GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/ApiFeature$Q;

.field public static final HYPERLINK_CONTEXT_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final MULTI_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final MUTE_AUDIO:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final NAVIGATION_CALLBACK_BASIC:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final NAVIGATION_LISTENER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/ApiFeature$M;

.field public static final ORIGIN_MATCHED_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/webkit/Profile$ExperimentalOriginMatchedHeader;
    .end annotation
.end field

.field public static final PAYMENT_REQUEST:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final POST_WEB_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final PRECONNECT:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PRERENDER_WITH_URL:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROFILE_URL_PREFETCH:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROVIDER_WEAKLY_REF_WEBVIEW:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROXY_OVERRIDE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final PROXY_OVERRIDE_REVERSE_BYPASS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/ApiFeature$M;

.field public static final RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/ApiFeature$M;

.field public static final REQUESTED_WITH_HEADER_ALLOW_LIST:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
    .end annotation
.end field

.field public static final SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/ApiFeature$O;

.field public static final SAFE_BROWSING_HIT:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final SAVE_STATE:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/ApiFeature$N;

.field public static final SPECULATIVE_LOADING:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final SPECULATIVE_LOADING_CONFIG:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

.field public static final STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX:Landroidx/webkit/internal/StartupApiFeature$P;

.field public static final STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

.field public static final STARTUP_FEATURE_SET_PROFILES_TO_LOAD:Landroidx/webkit/internal/StartupApiFeature$NoFramework;
    .annotation build Landroidx/webkit/WebViewCompat$ExperimentalAsyncStartUp;
    .end annotation
.end field

.field public static final STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE:Landroidx/webkit/internal/StartupApiFeature$NoFramework;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

.field public static final START_SAFE_BROWSING:Landroidx/webkit/internal/ApiFeature$O_MR1;

.field public static final TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$P;

.field public static final USER_AGENT_METADATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final USER_AGENT_METADATA_FORM_FACTORS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WARM_UP_RENDERER_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/webkit/Profile$ExperimentalWarmUpRendererProcess;
    .end annotation
.end field

.field public static final WEBVIEW_BUILDER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final WEBVIEW_MEDIA_INTEGRITY_API_STATUS:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_AUTHENTICATION:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_MESSAGE_ARRAY_BUFFER:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/ApiFeature$NoFramework;

.field public static final WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/ApiFeature$M;

.field public static final WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/ApiFeature$N;

.field public static final WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$Q;

.field public static final WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/ApiFeature$Q;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 2
    .line 3
    const-string v1, "VISUAL_STATE_CALLBACK"

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->VISUAL_STATE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

    .line 9
    .line 10
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 11
    .line 12
    const-string v1, "OFF_SCREEN_PRERASTER"

    .line 13
    .line 14
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->OFF_SCREEN_PRERASTER:Landroidx/webkit/internal/ApiFeature$M;

    .line 18
    .line 19
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O;

    .line 20
    .line 21
    const-string v1, "SAFE_BROWSING_ENABLE"

    .line 22
    .line 23
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ENABLE:Landroidx/webkit/internal/ApiFeature$O;

    .line 27
    .line 28
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    .line 29
    .line 30
    const-string v1, "DISABLED_ACTION_MODE_MENU_ITEMS"

    .line 31
    .line 32
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DISABLED_ACTION_MODE_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$N;

    .line 36
    .line 37
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 38
    .line 39
    const-string v1, "START_SAFE_BROWSING"

    .line 40
    .line 41
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->START_SAFE_BROWSING:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 45
    .line 46
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 47
    .line 48
    const-string v1, "SAFE_BROWSING_WHITELIST"

    .line 49
    .line 50
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 54
    .line 55
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 56
    .line 57
    const-string v2, "SAFE_BROWSING_ALLOWLIST"

    .line 58
    .line 59
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 63
    .line 64
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 65
    .line 66
    invoke-direct {v0, v2, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 70
    .line 71
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 72
    .line 73
    invoke-direct {v0, v2, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 77
    .line 78
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 79
    .line 80
    const-string v1, "SAFE_BROWSING_PRIVACY_POLICY_URL"

    .line 81
    .line 82
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_PRIVACY_POLICY_URL:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 86
    .line 87
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    .line 88
    .line 89
    const-string v1, "SERVICE_WORKER_BASIC_USAGE"

    .line 90
    .line 91
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$N;

    .line 95
    .line 96
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    .line 97
    .line 98
    const-string v1, "SERVICE_WORKER_CACHE_MODE"

    .line 99
    .line 100
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CACHE_MODE:Landroidx/webkit/internal/ApiFeature$N;

    .line 104
    .line 105
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    .line 106
    .line 107
    const-string v1, "SERVICE_WORKER_CONTENT_ACCESS"

    .line 108
    .line 109
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_CONTENT_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

    .line 113
    .line 114
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    .line 115
    .line 116
    const-string v1, "SERVICE_WORKER_FILE_ACCESS"

    .line 117
    .line 118
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_FILE_ACCESS:Landroidx/webkit/internal/ApiFeature$N;

    .line 122
    .line 123
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    .line 124
    .line 125
    const-string v1, "SERVICE_WORKER_BLOCK_NETWORK_LOADS"

    .line 126
    .line 127
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_BLOCK_NETWORK_LOADS:Landroidx/webkit/internal/ApiFeature$N;

    .line 131
    .line 132
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    .line 133
    .line 134
    const-string v1, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    .line 135
    .line 136
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST:Landroidx/webkit/internal/ApiFeature$N;

    .line 140
    .line 141
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 142
    .line 143
    const-string v1, "RECEIVE_WEB_RESOURCE_ERROR"

    .line 144
    .line 145
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_WEB_RESOURCE_ERROR:Landroidx/webkit/internal/ApiFeature$M;

    .line 149
    .line 150
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 151
    .line 152
    const-string v1, "RECEIVE_HTTP_ERROR"

    .line 153
    .line 154
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->RECEIVE_HTTP_ERROR:Landroidx/webkit/internal/ApiFeature$M;

    .line 158
    .line 159
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    .line 160
    .line 161
    const-string v1, "SHOULD_OVERRIDE_WITH_REDIRECTS"

    .line 162
    .line 163
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SHOULD_OVERRIDE_WITH_REDIRECTS:Landroidx/webkit/internal/ApiFeature$N;

    .line 167
    .line 168
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 169
    .line 170
    const-string v1, "SAFE_BROWSING_HIT"

    .line 171
    .line 172
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_HIT:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 176
    .line 177
    new-instance v0, Landroidx/webkit/internal/ApiFeature$N;

    .line 178
    .line 179
    const-string v1, "WEB_RESOURCE_REQUEST_IS_REDIRECT"

    .line 180
    .line 181
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_REQUEST_IS_REDIRECT:Landroidx/webkit/internal/ApiFeature$N;

    .line 185
    .line 186
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 187
    .line 188
    const-string v1, "WEB_RESOURCE_ERROR_GET_DESCRIPTION"

    .line 189
    .line 190
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_DESCRIPTION:Landroidx/webkit/internal/ApiFeature$M;

    .line 194
    .line 195
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 196
    .line 197
    const-string v1, "WEB_RESOURCE_ERROR_GET_CODE"

    .line 198
    .line 199
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_RESOURCE_ERROR_GET_CODE:Landroidx/webkit/internal/ApiFeature$M;

    .line 203
    .line 204
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 205
    .line 206
    const-string v1, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    .line 207
    .line 208
    const-string v2, "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY"

    .line 209
    .line 210
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 214
    .line 215
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 216
    .line 217
    const-string v1, "SAFE_BROWSING_RESPONSE_PROCEED"

    .line 218
    .line 219
    const-string v2, "SAFE_BROWSING_RESPONSE_PROCEED"

    .line 220
    .line 221
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_PROCEED:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 225
    .line 226
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 227
    .line 228
    const-string v1, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    .line 229
    .line 230
    const-string v2, "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL"

    .line 231
    .line 232
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O_MR1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL:Landroidx/webkit/internal/ApiFeature$O_MR1;

    .line 236
    .line 237
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 238
    .line 239
    const-string v1, "WEB_MESSAGE_PORT_POST_MESSAGE"

    .line 240
    .line 241
    const-string v2, "WEB_MESSAGE_PORT_POST_MESSAGE"

    .line 242
    .line 243
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_POST_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

    .line 247
    .line 248
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 249
    .line 250
    const-string v1, "WEB_MESSAGE_PORT_CLOSE"

    .line 251
    .line 252
    const-string v2, "WEB_MESSAGE_PORT_CLOSE"

    .line 253
    .line 254
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_CLOSE:Landroidx/webkit/internal/ApiFeature$M;

    .line 258
    .line 259
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 260
    .line 261
    const-string v1, "WEB_MESSAGE_ARRAY_BUFFER"

    .line 262
    .line 263
    const-string v2, "WEB_MESSAGE_ARRAY_BUFFER"

    .line 264
    .line 265
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_ARRAY_BUFFER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 269
    .line 270
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 271
    .line 272
    const-string v1, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    .line 273
    .line 274
    const-string v2, "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK"

    .line 275
    .line 276
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK:Landroidx/webkit/internal/ApiFeature$M;

    .line 280
    .line 281
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 282
    .line 283
    const-string v1, "CREATE_WEB_MESSAGE_CHANNEL"

    .line 284
    .line 285
    const-string v2, "CREATE_WEB_MESSAGE_CHANNEL"

    .line 286
    .line 287
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CREATE_WEB_MESSAGE_CHANNEL:Landroidx/webkit/internal/ApiFeature$M;

    .line 291
    .line 292
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 293
    .line 294
    const-string v1, "POST_WEB_MESSAGE"

    .line 295
    .line 296
    const-string v2, "POST_WEB_MESSAGE"

    .line 297
    .line 298
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->POST_WEB_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

    .line 302
    .line 303
    new-instance v0, Landroidx/webkit/internal/ApiFeature$M;

    .line 304
    .line 305
    const-string v1, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    .line 306
    .line 307
    const-string v2, "WEB_MESSAGE_CALLBACK_ON_MESSAGE"

    .line 308
    .line 309
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$M;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_CALLBACK_ON_MESSAGE:Landroidx/webkit/internal/ApiFeature$M;

    .line 313
    .line 314
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O;

    .line 315
    .line 316
    const-string v1, "GET_WEB_VIEW_CLIENT"

    .line 317
    .line 318
    const-string v2, "GET_WEB_VIEW_CLIENT"

    .line 319
    .line 320
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

    .line 324
    .line 325
    new-instance v0, Landroidx/webkit/internal/ApiFeature$O;

    .line 326
    .line 327
    const-string v1, "GET_WEB_CHROME_CLIENT"

    .line 328
    .line 329
    const-string v2, "GET_WEB_CHROME_CLIENT"

    .line 330
    .line 331
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$O;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_CHROME_CLIENT:Landroidx/webkit/internal/ApiFeature$O;

    .line 335
    .line 336
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    .line 337
    .line 338
    const-string v1, "GET_WEB_VIEW_RENDERER"

    .line 339
    .line 340
    const-string v2, "GET_WEB_VIEW_RENDERER"

    .line 341
    .line 342
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_WEB_VIEW_RENDERER:Landroidx/webkit/internal/ApiFeature$Q;

    .line 346
    .line 347
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    .line 348
    .line 349
    const-string v1, "WEB_VIEW_RENDERER_TERMINATE"

    .line 350
    .line 351
    const-string v2, "WEB_VIEW_RENDERER_TERMINATE"

    .line 352
    .line 353
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_TERMINATE:Landroidx/webkit/internal/ApiFeature$Q;

    .line 357
    .line 358
    new-instance v0, Landroidx/webkit/internal/ApiFeature$P;

    .line 359
    .line 360
    const-string v1, "TRACING_CONTROLLER_BASIC_USAGE"

    .line 361
    .line 362
    const-string v2, "TRACING_CONTROLLER_BASIC_USAGE"

    .line 363
    .line 364
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$P;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->TRACING_CONTROLLER_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$P;

    .line 368
    .line 369
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$P;

    .line 370
    .line 371
    const-string v1, "STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX"

    .line 372
    .line 373
    const-string v2, "STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX"

    .line 374
    .line 375
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$P;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX:Landroidx/webkit/internal/StartupApiFeature$P;

    .line 379
    .line 380
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 381
    .line 382
    const-string v1, "STARTUP_FEATURE_SET_DIRECTORY_BASE_PATHS"

    .line 383
    .line 384
    const-string v2, "STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH"

    .line 385
    .line 386
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 390
    .line 391
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 392
    .line 393
    const-string v1, "STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES"

    .line 394
    .line 395
    const-string v2, "STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES"

    .line 396
    .line 397
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 401
    .line 402
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    .line 403
    .line 404
    const-string v1, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 405
    .line 406
    const-string v2, "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"

    .line 407
    .line 408
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE:Landroidx/webkit/internal/ApiFeature$Q;

    .line 412
    .line 413
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$1;

    .line 414
    .line 415
    const-string v1, "ALGORITHMIC_DARKENING"

    .line 416
    .line 417
    const-string v2, "ALGORITHMIC_DARKENING"

    .line 418
    .line 419
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/WebViewFeatureInternal$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ALGORITHMIC_DARKENING:Landroidx/webkit/internal/ApiFeature$T;

    .line 423
    .line 424
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 425
    .line 426
    const-string v1, "PROXY_OVERRIDE"

    .line 427
    .line 428
    const-string v2, "PROXY_OVERRIDE:3"

    .line 429
    .line 430
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROXY_OVERRIDE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 434
    .line 435
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 436
    .line 437
    const-string v1, "MULTI_PROCESS"

    .line 438
    .line 439
    const-string v2, "MULTI_PROCESS_QUERY"

    .line 440
    .line 441
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 445
    .line 446
    new-instance v0, Landroidx/webkit/internal/ApiFeature$Q;

    .line 447
    .line 448
    const-string v1, "FORCE_DARK"

    .line 449
    .line 450
    const-string v2, "FORCE_DARK"

    .line 451
    .line 452
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK:Landroidx/webkit/internal/ApiFeature$Q;

    .line 456
    .line 457
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 458
    .line 459
    const-string v1, "FORCE_DARK_STRATEGY"

    .line 460
    .line 461
    const-string v2, "FORCE_DARK_BEHAVIOR"

    .line 462
    .line 463
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->FORCE_DARK_STRATEGY:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 467
    .line 468
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 469
    .line 470
    const-string v1, "WEB_MESSAGE_LISTENER"

    .line 471
    .line 472
    const-string v2, "WEB_MESSAGE_LISTENER"

    .line 473
    .line 474
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_MESSAGE_LISTENER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 478
    .line 479
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 480
    .line 481
    const-string v1, "DOCUMENT_START_SCRIPT"

    .line 482
    .line 483
    const-string v2, "DOCUMENT_START_SCRIPT:1"

    .line 484
    .line 485
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DOCUMENT_START_SCRIPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 489
    .line 490
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 491
    .line 492
    const-string v1, "PROXY_OVERRIDE_REVERSE_BYPASS"

    .line 493
    .line 494
    const-string v2, "PROXY_OVERRIDE_REVERSE_BYPASS"

    .line 495
    .line 496
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROXY_OVERRIDE_REVERSE_BYPASS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 500
    .line 501
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 502
    .line 503
    const-string v1, "GET_VARIATIONS_HEADER"

    .line 504
    .line 505
    const-string v2, "GET_VARIATIONS_HEADER"

    .line 506
    .line 507
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_VARIATIONS_HEADER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 511
    .line 512
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 513
    .line 514
    const-string v1, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    .line 515
    .line 516
    const-string v2, "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY"

    .line 517
    .line 518
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 522
    .line 523
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 524
    .line 525
    const-string v1, "GET_COOKIE_INFO"

    .line 526
    .line 527
    const-string v2, "GET_COOKIE_INFO"

    .line 528
    .line 529
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->GET_COOKIE_INFO:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 533
    .line 534
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 535
    .line 536
    const-string v1, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    .line 537
    .line 538
    const-string v2, "REQUESTED_WITH_HEADER_ALLOW_LIST"

    .line 539
    .line 540
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->REQUESTED_WITH_HEADER_ALLOW_LIST:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 544
    .line 545
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 546
    .line 547
    const-string v1, "USER_AGENT_METADATA"

    .line 548
    .line 549
    invoke-direct {v0, v1, v1}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->USER_AGENT_METADATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 553
    .line 554
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$2;

    .line 555
    .line 556
    const-string v2, "USER_AGENT_METADATA_FORM_FACTORS"

    .line 557
    .line 558
    invoke-direct {v0, v2, v1}, Landroidx/webkit/internal/WebViewFeatureInternal$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->USER_AGENT_METADATA_FORM_FACTORS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 562
    .line 563
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$3;

    .line 564
    .line 565
    const-string v1, "MULTI_PROFILE"

    .line 566
    .line 567
    const-string v2, "MULTI_PROFILE"

    .line 568
    .line 569
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/WebViewFeatureInternal$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MULTI_PROFILE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 573
    .line 574
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 575
    .line 576
    const-string v1, "ATTRIBUTION_REGISTRATION_BEHAVIOR"

    .line 577
    .line 578
    const-string v2, "ATTRIBUTION_BEHAVIOR"

    .line 579
    .line 580
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ATTRIBUTION_REGISTRATION_BEHAVIOR:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 584
    .line 585
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 586
    .line 587
    const-string v1, "WEBVIEW_MEDIA_INTEGRITY_API_STATUS"

    .line 588
    .line 589
    const-string v2, "WEBVIEW_INTEGRITY_API_STATUS"

    .line 590
    .line 591
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_MEDIA_INTEGRITY_API_STATUS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 595
    .line 596
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 597
    .line 598
    const-string v1, "MUTE_AUDIO"

    .line 599
    .line 600
    const-string v2, "MUTE_AUDIO"

    .line 601
    .line 602
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->MUTE_AUDIO:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 606
    .line 607
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 608
    .line 609
    const-string v1, "WEB_AUTHENTICATION"

    .line 610
    .line 611
    const-string v2, "WEB_AUTHENTICATION"

    .line 612
    .line 613
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEB_AUTHENTICATION:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 617
    .line 618
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 619
    .line 620
    const-string v1, "SPECULATIVE_LOADING_STATUS"

    .line 621
    .line 622
    const-string v2, "SPECULATIVE_LOADING"

    .line 623
    .line 624
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SPECULATIVE_LOADING:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 628
    .line 629
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 630
    .line 631
    const-string v1, "BACK_FORWARD_CACHE"

    .line 632
    .line 633
    const-string v2, "BACK_FORWARD_CACHE"

    .line 634
    .line 635
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 639
    .line 640
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 641
    .line 642
    const-string v1, "BACK_FORWARD_CACHE_SETTINGS"

    .line 643
    .line 644
    const-string v2, "BACK_FORWARD_CACHE_SETTINGS"

    .line 645
    .line 646
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->BACK_FORWARD_CACHE_SETTINGS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 650
    .line 651
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 652
    .line 653
    const-string v1, "DELETE_BROWSING_DATA"

    .line 654
    .line 655
    const-string v2, "WEB_STORAGE_DELETE_BROWSING_DATA"

    .line 656
    .line 657
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DELETE_BROWSING_DATA:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 661
    .line 662
    new-instance v0, Landroidx/webkit/internal/WebViewFeatureInternal$4;

    .line 663
    .line 664
    const-string v1, "PREFETCH_URL_V5"

    .line 665
    .line 666
    const-string v2, "PREFETCH_URL_V5"

    .line 667
    .line 668
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/WebViewFeatureInternal$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROFILE_URL_PREFETCH:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 672
    .line 673
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 674
    .line 675
    const-string v1, "IMPLEMENTATION_ONLY_FEATURE"

    .line 676
    .line 677
    const-string v2, "ASYNC_WEBVIEW_STARTUP"

    .line 678
    .line 679
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ASYNC_WEBVIEW_STARTUP:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 683
    .line 684
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 685
    .line 686
    const-string v1, "IMPLEMENTATION_ONLY_FEATURE"

    .line 687
    .line 688
    const-string v2, "ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS"

    .line 689
    .line 690
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 694
    .line 695
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 696
    .line 697
    const-string v1, "DEFAULT_TRAFFICSTATS_TAGGING"

    .line 698
    .line 699
    const-string v2, "DEFAULT_TRAFFICSTATS_TAGGING"

    .line 700
    .line 701
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->DEFAULT_TRAFFICSTATS_TAGGING:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 705
    .line 706
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 707
    .line 708
    const-string v1, "PRERENDER_URL_V2"

    .line 709
    .line 710
    const-string v2, "PRERENDER_URL_V3"

    .line 711
    .line 712
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PRERENDER_WITH_URL:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 716
    .line 717
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 718
    .line 719
    const-string v1, "SPECULATIVE_LOADING_CONFIG_V2"

    .line 720
    .line 721
    const-string v2, "SPECULATIVE_LOADING_CONFIG_V2"

    .line 722
    .line 723
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SPECULATIVE_LOADING_CONFIG:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 727
    .line 728
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 729
    .line 730
    const-string v1, "SAVE_STATE"

    .line 731
    .line 732
    const-string v2, "SAVE_STATE"

    .line 733
    .line 734
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->SAVE_STATE:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 738
    .line 739
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 740
    .line 741
    const-string v1, "WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE"

    .line 742
    .line 743
    const-string v2, "WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE"

    .line 744
    .line 745
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->NAVIGATION_CALLBACK_BASIC:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 749
    .line 750
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 751
    .line 752
    const-string v1, "NAVIGATION_LISTENER_V1"

    .line 753
    .line 754
    const-string v2, "WEB_VIEW_NAVIGATION_LISTENER_V1"

    .line 755
    .line 756
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->NAVIGATION_LISTENER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 760
    .line 761
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 762
    .line 763
    const-string v1, "PROVIDER_WEAKLY_REF_WEBVIEW"

    .line 764
    .line 765
    const-string v2, "PROVIDER_WEAKLY_REF_WEBVIEW"

    .line 766
    .line 767
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PROVIDER_WEAKLY_REF_WEBVIEW:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 771
    .line 772
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 773
    .line 774
    const-string v1, "PAYMENT_REQUEST"

    .line 775
    .line 776
    const-string v2, "PAYMENT_REQUEST"

    .line 777
    .line 778
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PAYMENT_REQUEST:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 782
    .line 783
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 784
    .line 785
    const-string v1, "WEBVIEW_BUILDER_EXPERIMENTAL_V1"

    .line 786
    .line 787
    const-string v2, "WEBVIEW_BUILDER_V1"

    .line 788
    .line 789
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_BUILDER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 793
    .line 794
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 795
    .line 796
    const-string v1, "COOKIE_INTERCEPT"

    .line 797
    .line 798
    const-string v2, "COOKIE_INTERCEPT"

    .line 799
    .line 800
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->COOKIE_INTERCEPT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 804
    .line 805
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 806
    .line 807
    const-string v1, "WARM_UP_RENDERER_PROCESS"

    .line 808
    .line 809
    const-string v2, "WARM_UP_RENDERER_PROCESS"

    .line 810
    .line 811
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WARM_UP_RENDERER_PROCESS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 815
    .line 816
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 817
    .line 818
    const-string v1, "ORIGIN_MATCHED_HEADERS"

    .line 819
    .line 820
    const-string v2, "EXTRA_HEADER_FOR_ORIGINS"

    .line 821
    .line 822
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ORIGIN_MATCHED_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 826
    .line 827
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 828
    .line 829
    const-string v1, "CUSTOM_REQUEST_HEADERS"

    .line 830
    .line 831
    const-string v2, "CUSTOM_REQUEST_HEADERS"

    .line 832
    .line 833
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->CUSTOM_REQUEST_HEADERS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 837
    .line 838
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 839
    .line 840
    const-string v1, "STARTUP_FEATURE_SET_PROFILES_TO_LOAD"

    .line 841
    .line 842
    const-string v2, "STARTUP_FEATURE_SET_PROFILES_TO_LOAD"

    .line 843
    .line 844
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_PROFILES_TO_LOAD:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 848
    .line 849
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 850
    .line 851
    const-string v1, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE"

    .line 852
    .line 853
    const-string v2, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE"

    .line 854
    .line 855
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 859
    .line 860
    new-instance v0, Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 861
    .line 862
    const-string v1, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2"

    .line 863
    .line 864
    const-string v2, "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2"

    .line 865
    .line 866
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 870
    .line 871
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 872
    .line 873
    const-string v1, "PRECONNECT"

    .line 874
    .line 875
    const-string v2, "PRECONNECT"

    .line 876
    .line 877
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->PRECONNECT:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 881
    .line 882
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 883
    .line 884
    const-string v1, "ADD_QUIC_HINTS"

    .line 885
    .line 886
    const-string v2, "ADD_QUIC_HINTS_V1"

    .line 887
    .line 888
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    .line 890
    .line 891
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ADD_QUIC_HINTS_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 892
    .line 893
    new-instance v0, Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 894
    .line 895
    const-string v1, "HYPERLINK_CONTEXT_MENU_ITEMS"

    .line 896
    .line 897
    const-string v2, "HYPERLINK_CONTEXT_MENU_ITEMS"

    .line 898
    .line 899
    invoke-direct {v0, v1, v2}, Landroidx/webkit/internal/ApiFeature$NoFramework;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    sput-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->HYPERLINK_CONTEXT_MENU_ITEMS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 903
    .line 904
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

.method public static getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static isStartupFeatureSupported(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/webkit/internal/StartupApiFeature;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/webkit/internal/WebViewFeatureInternal;->isStartupFeatureSupported(Ljava/lang/String;Ljava/util/Collection;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isStartupFeatureSupported(Ljava/lang/String;Ljava/util/Collection;Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Landroidx/webkit/internal/StartupApiFeature;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/internal/StartupApiFeature;

    .line 4
    invoke-virtual {v1}, Landroidx/webkit/internal/StartupApiFeature;->getPublicFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/webkit/internal/StartupApiFeature;

    .line 8
    invoke-virtual {p1, p2}, Landroidx/webkit/internal/StartupApiFeature;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown feature "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Landroidx/webkit/internal/ApiFeature;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/webkit/internal/WebViewFeatureInternal;->isSupported(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/webkit/internal/ConditionallySupportedFeature;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "TT;>;)Z"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/webkit/internal/ConditionallySupportedFeature;

    .line 4
    invoke-interface {v1}, Landroidx/webkit/internal/ConditionallySupportedFeature;->getPublicFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/webkit/internal/ConditionallySupportedFeature;

    .line 8
    invoke-interface {p1}, Landroidx/webkit/internal/ConditionallySupportedFeature;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
