.class public final Lcom/vungle/ads/internal/load/RTADebugger;
.super Ljava/lang/Object;
.source "RTADebugger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/load/RTADebugger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/load/RTADebugger$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RTA_DEBUG_ENDPOINT:Ljava/lang/String; = "https://events.ads.vungle.com/rtadebugging"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final apiClient:Lcom/vungle/ads/internal/network/VungleApiClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/load/RTADebugger$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/load/RTADebugger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/load/RTADebugger;->Companion:Lcom/vungle/ads/internal/load/RTADebugger$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/network/VungleApiClient;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/internal/network/VungleApiClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "apiClient"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/vungle/ads/internal/load/RTADebugger;->apiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final reportAdMarkup(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/load/RTADebugger;->apiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 7
    .line 8
    const-string v1, "https://events.ads.vungle.com/rtadebugging"

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/vungle/ads/internal/network/VungleApiClient;->sendAdMarkup(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
