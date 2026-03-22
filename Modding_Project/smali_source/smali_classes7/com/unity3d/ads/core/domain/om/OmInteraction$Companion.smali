.class public final Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;
.super Ljava/lang/Object;
.source "OmInteraction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/om/OmInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;

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
    new-instance v0, Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;->$$INSTANCE:Lcom/unity3d/ads/core/domain/om/OmInteraction$Companion;

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
