.class public abstract Lcom/unity3d/ads/core/data/model/LoadResult;
.super Ljava/lang/Object;
.source "LoadResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/model/LoadResult$Companion;,
        Lcom/unity3d/ads/core/data/model/LoadResult$Failure;,
        Lcom/unity3d/ads/core/data/model/LoadResult$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/model/LoadResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_AD_MARKUP_PARSING:Ljava/lang/String; = "[UnityAds] Could not parse Ad Markup"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_AD_OBJECT:Ljava/lang/String; = "[UnityAds] Ad not found"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_COMMUNICATION_FAILURE:Ljava/lang/String; = "[UnityAds] Internal communication failure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_COMMUNICATION_FAILURE_WITH_DETAILS:Ljava/lang/String; = "[UnityAds] Internal communication failure: %s"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_COMMUNICATION_TIMEOUT:Ljava/lang/String; = "[UnityAds] Internal communication timeout"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_CREATE_REQUEST:Ljava/lang/String; = "[UnityAds] Failed to create load request"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_INIT_FAILED:Ljava/lang/String; = "[UnityAds] SDK Initialization Failed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_INIT_FAILURE:Ljava/lang/String; = "[UnityAds] SDK Initialization Failure"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_NOT_INITIALIZED:Ljava/lang/String; = "[UnityAds] SDK not initialized"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_NO_FILL:Ljava/lang/String; = "[UnityAds] No fill"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_OPPORTUNITY_ID_USED:Ljava/lang/String; = "[UnityAds] Object ID already used"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_PLACEMENT_NULL:Ljava/lang/String; = "[UnityAds] Placement ID cannot be null"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MSG_TIMEOUT:Ljava/lang/String; = "[UnityAds] Timeout while loading "
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/data/model/LoadResult$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/model/LoadResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/core/data/model/LoadResult;->Companion:Lcom/unity3d/ads/core/data/model/LoadResult$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/unity3d/ads/core/data/model/LoadResult;-><init>()V

    return-void
.end method
