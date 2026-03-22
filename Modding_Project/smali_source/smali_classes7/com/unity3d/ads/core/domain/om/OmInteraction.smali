.class public interface abstract Lcom/unity3d/ads/core/domain/om/OmInteraction;
.super Ljava/lang/Object;
.source "OmInteraction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OMID_CREATIVE_TYPE:Ljava/lang/String; = "creativeType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OMID_CUSTOM_REFERENCE_DATA:Ljava/lang/String; = "customReferenceData"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OMID_IMPRESSION_OWNER:Ljava/lang/String; = "impressionOwner"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OMID_IMPRESSION_TYPE:Ljava/lang/String; = "impressionType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OMID_ISOLATE_VERIFICATION_SCRIPTS:Ljava/lang/String; = "isolateVerificationScripts"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OMID_MEDIA_EVENTS_OWNER:Ljava/lang/String; = "mediaEventsOwner"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OMID_VIDEO_EVENTS_OWNER:Ljava/lang/String; = "videoEventsOwner"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;->$$INSTANCE:Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/unity3d/ads/core/domain/om/OmInteraction;->Companion:Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract getOMidOptions(Lorg/json/JSONObject;)Lcom/unity3d/ads/core/data/model/OmidOptions;
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getWebview(Lcom/unity3d/ads/core/data/model/AdObject;)Landroid/webkit/WebView;
    .param p1    # Lcom/unity3d/ads/core/data/model/AdObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract invoke(Lcom/unity3d/ads/core/data/model/AdObject;Lorg/json/JSONObject;Lrs/c;)Ljava/lang/Object;
    .param p1    # Lcom/unity3d/ads/core/data/model/AdObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/model/AdObject;",
            "Lorg/json/JSONObject;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
