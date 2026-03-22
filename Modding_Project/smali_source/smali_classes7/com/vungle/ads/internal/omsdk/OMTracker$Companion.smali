.class public final Lcom/vungle/ads/internal/omsdk/OMTracker$Companion;
.super Ljava/lang/Object;
.source "OMTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/omsdk/OMTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/internal/omsdk/OMTracker$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getDESTROY_DELAY_MS$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final getDESTROY_DELAY_MS()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/vungle/ads/internal/omsdk/OMTracker;->access$getDESTROY_DELAY_MS$cp()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
