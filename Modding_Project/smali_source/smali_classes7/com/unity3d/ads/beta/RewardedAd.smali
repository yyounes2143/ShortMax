.class public final Lcom/unity3d/ads/beta/RewardedAd;
.super Ljava/lang/Object;
.source "RewardedAd.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/beta/RewardedAd$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/beta/RewardedAd$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final adObject:Lcom/unity3d/ads/core/data/model/AdObject;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final loadOptions:Lcom/unity3d/ads/beta/LoadOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/beta/RewardedAd$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/beta/RewardedAd$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/beta/RewardedAd;->Companion:Lcom/unity3d/ads/beta/RewardedAd$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/model/AdObject;Lcom/unity3d/ads/beta/LoadOptions;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/model/AdObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/beta/LoadOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adObject"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "loadOptions"

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
    iput-object p1, p0, Lcom/unity3d/ads/beta/RewardedAd;->adObject:Lcom/unity3d/ads/core/data/model/AdObject;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/beta/RewardedAd;->loadOptions:Lcom/unity3d/ads/beta/LoadOptions;

    .line 17
    .line 18
    return-void
.end method

.method public static final load(Lcom/unity3d/ads/beta/LoadOptions;Lcom/unity3d/ads/beta/LoadListener;)V
    .locals 1
    .param p0    # Lcom/unity3d/ads/beta/LoadOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/unity3d/ads/beta/LoadListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/beta/LoadOptions;",
            "Lcom/unity3d/ads/beta/LoadListener<",
            "Lcom/unity3d/ads/beta/RewardedAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/unity3d/ads/beta/RewardedAd;->Companion:Lcom/unity3d/ads/beta/RewardedAd$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/unity3d/ads/beta/RewardedAd$Companion;->load(Lcom/unity3d/ads/beta/LoadOptions;Lcom/unity3d/ads/beta/LoadListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic show$default(Lcom/unity3d/ads/beta/RewardedAd;Landroid/app/Activity;Lcom/unity3d/ads/beta/ShowOptions;Lcom/unity3d/ads/beta/RewardedShowListener;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/unity3d/ads/beta/RewardedAd;->show(Landroid/app/Activity;Lcom/unity3d/ads/beta/ShowOptions;Lcom/unity3d/ads/beta/RewardedShowListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final show(Landroid/app/Activity;Lcom/unity3d/ads/beta/ShowOptions;Lcom/unity3d/ads/beta/RewardedShowListener;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/beta/ShowOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/beta/RewardedShowListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "listener"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
