.class public final Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;
.super Ljava/lang/Object;
.source "FacebookAdapterUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;->INSTANCE:Lcom/google/ads/mediation/facebook/FacebookAdapterUtils;

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

.method public static final getAdapterVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "6.20.0.0"

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic getAdapterVersion$annotations()V
    .locals 0

    .line 1
    return-void
.end method
