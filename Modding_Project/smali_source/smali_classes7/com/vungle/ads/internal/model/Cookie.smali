.class public final Lcom/vungle/ads/internal/model/Cookie;
.super Ljava/lang/Object;
.source "Cookie.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final CCPA_CONSENT_STATUS:Ljava/lang/String; = "ccpa_status"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONFIG_APP_ID:Ljava/lang/String; = "config_app_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONFIG_EXTENSION:Ljava/lang/String; = "config_extension"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONFIG_RESPONSE:Ljava/lang/String; = "config_response"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CONFIG_UPDATE_TIME:Ljava/lang/String; = "config_update_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COPPA_DISABLE_AD_ID:Ljava/lang/String; = "disable_ad_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COPPA_STATUS_KEY:Ljava/lang/String; = "is_coppa"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GDPR_CONSENT_MESSAGE_VERSION:Ljava/lang/String; = "gdpr_message_version"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GDPR_CONSENT_SOURCE:Ljava/lang/String; = "gdpr_source"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GDPR_CONSENT_STATUS:Ljava/lang/String; = "gdpr_status"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final GDPR_CONSENT_TIMESTAMP:Ljava/lang/String; = "gdpr_timestamp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IABTCF_GDPR_APPLIES:Ljava/lang/String; = "IABTCF_gdprApplies"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IABTCF_TC_STRING:Ljava/lang/String; = "IABTCF_TCString"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/vungle/ads/internal/model/Cookie;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IS_PLAY_SERVICE_AVAILABLE:Ljava/lang/String; = "isPlaySvcAvailable"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/Cookie;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/Cookie;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/model/Cookie;->INSTANCE:Lcom/vungle/ads/internal/model/Cookie;

    .line 7
    .line 8
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
