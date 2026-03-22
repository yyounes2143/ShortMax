.class public final Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;
.super Ljava/lang/Object;
.source "FacebookSdkWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;->INSTANCE:Lcom/google/ads/mediation/facebook/FacebookSdkWrapper;

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

.method public static final getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "6.20.0"

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getSdkVersion$annotations()V
    .locals 0

    .line 1
    return-void
.end method
