.class final Lcom/unity3d/services/core/di/UnityAdsModule$publicApiJob$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UnityAdsModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/di/UnityAdsModule;->publicApiJob(Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;)Lkotlinx/coroutines/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $diagnosticEventRepository:Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/di/UnityAdsModule$publicApiJob$1$1;->$diagnosticEventRepository:Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/di/UnityAdsModule$publicApiJob$1$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, Lcom/unity3d/services/core/di/UnityAdsModule$publicApiJob$1$1;->$diagnosticEventRepository:Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;

    invoke-interface {p1}, Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;->flush()V

    return-void
.end method
