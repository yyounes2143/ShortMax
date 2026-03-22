.class public final Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;
.super Ljava/lang/Object;
.source "BannerLoadOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/beta/BannerLoadOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private adMarkup:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final bannerSize:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private listener:Lcom/unity3d/ads/beta/BannerShowListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final placementId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/Pair;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "placementId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bannerSize"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;->placementId:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;->bannerSize:Lkotlin/Pair;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/ads/beta/BannerLoadOptions;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lcom/unity3d/ads/beta/BannerLoadOptions;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;->placementId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;->bannerSize:Lkotlin/Pair;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;->adMarkup:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;->extras:Ljava/util/Map;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;->listener:Lcom/unity3d/ads/beta/BannerShowListener;

    .line 12
    .line 13
    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/beta/BannerLoadOptions;-><init>(Ljava/lang/String;Lkotlin/Pair;Ljava/lang/String;Ljava/util/Map;Lcom/unity3d/ads/beta/BannerShowListener;)V

    .line 15
    .line 16
    .line 17
    return-object v6
.end method

.method public final withAdMarkup(Ljava/lang/String;)Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "adMarkup"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;->adMarkup:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final withExtras(Ljava/util/Map;)Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "extras"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;->extras:Ljava/util/Map;

    .line 7
    .line 8
    return-object p0
.end method

.method public final withListener(Lcom/unity3d/ads/beta/BannerShowListener;)Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;
    .locals 1
    .param p1    # Lcom/unity3d/ads/beta/BannerShowListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/unity3d/ads/beta/BannerLoadOptions$Builder;->listener:Lcom/unity3d/ads/beta/BannerShowListener;

    .line 7
    .line 8
    return-object p0
.end method
