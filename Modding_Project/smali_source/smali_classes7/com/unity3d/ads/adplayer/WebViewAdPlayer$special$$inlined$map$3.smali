.class public final Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$3;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkt/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/WebViewAdPlayer;-><init>(Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lgt/c0;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/adplayer/WebViewContainer;Lgt/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkt/b<",
        "Lcom/unity3d/ads/core/data/model/ShowEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSafeCollector.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n*L\n1#1,112:1\n51#2,5:113\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $this_unsafeTransform$inlined:Lkt/b;


# direct methods
.method public constructor <init>(Lkt/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$3;->$this_unsafeTransform$inlined:Lkt/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public collect(Lkt/c;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkt/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$3;->$this_unsafeTransform$inlined:Lkt/b;

    .line 2
    .line 3
    new-instance v1, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$3$2;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$map$3$2;-><init>(Lkt/c;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, p2}, Lkt/b;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p1
.end method
