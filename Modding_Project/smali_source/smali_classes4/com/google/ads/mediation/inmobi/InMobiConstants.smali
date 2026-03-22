.class public Lcom/google/ads/mediation/inmobi/InMobiConstants;
.super Ljava/lang/Object;
.source "InMobiConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/inmobi/InMobiConstants$AdapterError;
    }
.end annotation


# static fields
.field public static final ERROR_AD_DISPLAY_FAILED:I = 0x6a

.field public static final ERROR_AD_NOT_READY:I = 0x69

.field public static final ERROR_BANNER_SIZE_MISMATCH:I = 0x66

.field public static final ERROR_DOMAIN:Ljava/lang/String; = "com.google.ads.mediation.inmobi"

.field public static final ERROR_INMOBI_FAILED_INITIALIZATION:I = 0x65

.field public static final ERROR_INMOBI_NOT_INITIALIZED:I = 0x68

.field public static final ERROR_INVALID_SERVER_PARAMETERS:I = 0x64

.field public static final ERROR_MALFORMED_IMAGE_URL:I = 0x6c

.field public static final ERROR_MISSING_NATIVE_ASSETS:I = 0x6b

.field public static final ERROR_NATIVE_ASSET_DOWNLOAD_FAILED:I = 0x6d

.field public static final ERROR_NON_UNIFIED_NATIVE_REQUEST:I = 0x67

.field public static final INMOBI_SDK_ERROR_DOMAIN:Ljava/lang/String; = "com.inmobi.sdk"

.field public static final WATERMARK_ALPHA:F = 0.3f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createAdapterError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    .line 2
    .line 3
    const-string v1, "com.google.ads.mediation.inmobi"

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static createSdkError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    .line 2
    .line 3
    const-string v1, "com.inmobi.sdk"

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
