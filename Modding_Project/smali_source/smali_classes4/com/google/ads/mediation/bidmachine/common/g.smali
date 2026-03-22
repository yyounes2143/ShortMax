.class public final Lcom/google/ads/mediation/bidmachine/common/g;
.super Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/bidmachine/common/g$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "g"


# instance fields
.field private final a:Lmp/b;

.field private final b:Lio/bidmachine/nativead/view/NativeMediaView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lmp/b;Lio/bidmachine/nativead/view/NativeMediaView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/g;->a:Lmp/b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/ads/mediation/bidmachine/common/g;->b:Lio/bidmachine/nativead/view/NativeMediaView;

    .line 7
    .line 8
    invoke-virtual {p1}, Lmp/b;->i()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lmp/b;->e()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lmp/b;->d()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p1}, Lmp/b;->h()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    float-to-double v0, v0

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setStarRating(Ljava/lang/Double;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/google/ads/mediation/bidmachine/common/g$b;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-direct {v0, v1}, Lcom/google/ads/mediation/bidmachine/common/g$b;-><init>(Lcom/google/ads/mediation/bidmachine/common/g$a;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lcom/google/ads/mediation/bidmachine/common/g$a;

    .line 57
    .line 58
    invoke-direct {v0, p0}, Lcom/google/ads/mediation/bidmachine/common/g$a;-><init>(Lcom/google/ads/mediation/bidmachine/common/g;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setImages(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setMediaView(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Lmp/b;->f(Landroid/content/Context;)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setAdChoicesContent(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    invoke-virtual {p1}, Lmp/b;->hasVideo()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setHasVideoContent(Z)V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideImpressionRecording(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->setOverrideClickHandling(Z)V

    .line 92
    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6

    .line 1
    instance-of p3, p1, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz p3, :cond_4

    .line 4
    .line 5
    new-instance p3, Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x0

    .line 20
    move-object v2, v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/view/View;

    .line 38
    .line 39
    invoke-interface {p3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/String;

    .line 47
    .line 48
    const-string v5, "3003"

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/widget/ImageView;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v3, "3010"

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    if-eqz v1, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/g;->b:Lio/bidmachine/nativead/view/NativeMediaView;

    .line 76
    .line 77
    :cond_3
    iget-object p2, p0, Lcom/google/ads/mediation/bidmachine/common/g;->a:Lmp/b;

    .line 78
    .line 79
    check-cast p1, Landroid/view/ViewGroup;

    .line 80
    .line 81
    invoke-virtual {p2, p1, v2, v0, p3}, Lmp/b;->k(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    sget-object p1, Lcom/google/ads/mediation/bidmachine/common/g;->c:Ljava/lang/String;

    .line 86
    .line 87
    const-string p2, "Failed to trackViews. View must be ViewGroup"

    .line 88
    .line 89
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :goto_1
    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/g;->a:Lmp/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lmp/b;->l()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
