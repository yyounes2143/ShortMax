.class Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;
.super Lcom/google/android/gms/ads/formats/NativeAd$Image;
.source "InMobiNativeMappedImage.java"


# instance fields
.field private final inMobiDrawable:Landroid/graphics/drawable/Drawable;

.field private final inMobiImageUri:Landroid/net/Uri;

.field private final inMobiScale:D


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiImageUri:Landroid/net/Uri;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiScale:D

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScale()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiScale:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiNativeMappedImage;->inMobiImageUri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method
