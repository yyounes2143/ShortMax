.class public final Lcom/google/ads/mediation/bidmachine/common/d;
.super Lcom/google/android/gms/ads/mediation/NativeAdMapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/bidmachine/common/d$a;,
        Lcom/google/ads/mediation/bidmachine/common/d$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/google/ads/mediation/bidmachine/common/d$a;

.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lmp/b;

.field private final b:Lio/bidmachine/nativead/view/NativeMediaView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/mediation/bidmachine/common/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/ads/mediation/bidmachine/common/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/ads/mediation/bidmachine/common/d;->c:Lcom/google/ads/mediation/bidmachine/common/d$a;

    .line 8
    .line 9
    const-class v0, Lcom/google/ads/mediation/bidmachine/common/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getSimpleName(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/ads/mediation/bidmachine/common/d;->d:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lmp/b;Lio/bidmachine/nativead/view/NativeMediaView;)V
    .locals 2

    .line 1
    const-string v0, "nativeAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nativeMediaView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/d;->a:Lmp/b;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/google/ads/mediation/bidmachine/common/d;->b:Lio/bidmachine/nativead/view/NativeMediaView;

    .line 17
    .line 18
    invoke-virtual {p1}, Lmp/b;->i()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Lmp/b;->e()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setBody(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Lmp/b;->d()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p1}, Lmp/b;->h()F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    float-to-double v0, v0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setStarRating(Ljava/lang/Double;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/google/ads/mediation/bidmachine/common/d$b;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/google/ads/mediation/bidmachine/common/d$b;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setIcon(Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/google/ads/mediation/bidmachine/common/d$b;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/google/ads/mediation/bidmachine/common/d$b;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setImages(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setMediaView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {p1, p2}, Lmp/b;->f(Landroid/content/Context;)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getAdChoicesContent()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setAdChoicesContent(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {p1}, Lmp/b;->hasVideo()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setHasVideoContent(Z)V

    .line 102
    .line 103
    .line 104
    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setOverrideImpressionRecording(Z)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->setOverrideClickHandling(Z)V

    .line 109
    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "clickableAssetViews"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "nonClickableAssetViews"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    instance-of p3, p1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz p3, :cond_4

    .line 19
    .line 20
    new-instance p3, Ljava/util/LinkedHashSet;

    .line 21
    .line 22
    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x0

    .line 35
    move-object v2, v0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroid/view/View;

    .line 59
    .line 60
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    const-string v5, "3003"

    .line 64
    .line 65
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    instance-of v5, v3, Landroid/widget/ImageView;

    .line 72
    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    move-object v2, v3

    .line 76
    check-cast v2, Landroid/widget/ImageView;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const-string v3, "3010"

    .line 80
    .line 81
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_0

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    if-eqz v1, :cond_3

    .line 90
    .line 91
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/d;->b:Lio/bidmachine/nativead/view/NativeMediaView;

    .line 92
    .line 93
    :cond_3
    iget-object p2, p0, Lcom/google/ads/mediation/bidmachine/common/d;->a:Lmp/b;

    .line 94
    .line 95
    check-cast p1, Landroid/view/ViewGroup;

    .line 96
    .line 97
    invoke-virtual {p2, p1, v2, v0, p3}, Lmp/b;->k(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    sget-object p1, Lcom/google/ads/mediation/bidmachine/common/d;->d:Ljava/lang/String;

    .line 102
    .line 103
    const-string p2, "Failed to trackViews. View must be ViewGroup"

    .line 104
    .line 105
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :goto_1
    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/d;->a:Lmp/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lmp/b;->l()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
