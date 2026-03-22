.class public final Lcom/vungle/ads/internal/omsdk/OMTestUtils;
.super Ljava/lang/Object;
.source "OMTestUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/omsdk/OMTestUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/omsdk/OMTestUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/omsdk/OMTestUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/omsdk/OMTestUtils;->INSTANCE:Lcom/vungle/ads/internal/omsdk/OMTestUtils;

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


# virtual methods
.method public final isOmidActive()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lcom/iab/omid/library/vungle/Omid;->isActive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
