.class public final Lcom/inmobi/ads/banner/InMobiBannerAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/inmobi/ads/banner/InMobiBannerAudioManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/ads/banner/InMobiBannerAudioManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/ads/banner/InMobiBannerAudioManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/ads/banner/InMobiBannerAudioManager;->INSTANCE:Lcom/inmobi/ads/banner/InMobiBannerAudioManager;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Lcom/inmobi/ads/InMobiBanner;
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    check-cast p0, Lcom/inmobi/ads/InMobiBanner;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-ge v1, v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    check-cast v2, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/inmobi/ads/banner/InMobiBannerAudioManager;->a(Landroid/view/ViewGroup;)Lcom/inmobi/ads/InMobiBanner;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    return-object v2

    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static final setAudioEnabled(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/v5;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final setAudioListener(Landroid/view/ViewGroup;Lcom/inmobi/ads/banner/AudioListener;)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/inmobi/ads/banner/AudioListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/ViewGroup;",
            ">(TT;",
            "Lcom/inmobi/ads/banner/AudioListener;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "t"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "audioListener"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/inmobi/ads/banner/InMobiBannerAudioManager;->INSTANCE:Lcom/inmobi/ads/banner/InMobiBannerAudioManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/inmobi/ads/banner/InMobiBannerAudioManager;->a(Landroid/view/ViewGroup;)Lcom/inmobi/ads/InMobiBanner;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->isAudioAd()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/InMobiBanner;->setAudioListener(Lcom/inmobi/ads/banner/AudioListener;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
