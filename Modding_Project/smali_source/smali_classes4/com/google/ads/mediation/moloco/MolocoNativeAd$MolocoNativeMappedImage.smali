.class public final Lcom/google/ads/mediation/moloco/MolocoNativeAd$MolocoNativeMappedImage;
.super Lcom/google/android/gms/ads/nativead/NativeAd$Image;
.source "MolocoNativeAd.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/moloco/MolocoNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MolocoNativeMappedImage"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final drawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scale:D

.field private final uri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/moloco/MolocoNativeAd$MolocoNativeMappedImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 5
    iput-object p2, p0, Lcom/google/ads/mediation/moloco/MolocoNativeAd$MolocoNativeMappedImage;->uri:Landroid/net/Uri;

    .line 6
    iput-wide p3, p0, Lcom/google/ads/mediation/moloco/MolocoNativeAd$MolocoNativeMappedImage;->scale:D

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/mediation/moloco/MolocoNativeAd$MolocoNativeMappedImage;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/moloco/MolocoNativeAd$MolocoNativeMappedImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getScale()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/ads/mediation/moloco/MolocoNativeAd$MolocoNativeMappedImage;->scale:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/moloco/MolocoNativeAd$MolocoNativeMappedImage;->uri:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method
