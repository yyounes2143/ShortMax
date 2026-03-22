.class public final Lcom/vungle/ads/internal/model/AdvertisingInfo;
.super Ljava/lang/Object;
.source "AdvertisingInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private advertisingId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private limitAdTracking:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getAdvertisingId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/model/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLimitAdTracking()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/AdvertisingInfo;->limitAdTracking:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAdvertisingId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/model/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLimitAdTracking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/AdvertisingInfo;->limitAdTracking:Z

    .line 2
    .line 3
    return-void
.end method
