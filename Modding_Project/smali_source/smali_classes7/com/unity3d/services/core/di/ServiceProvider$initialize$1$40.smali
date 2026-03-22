.class final Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$40;
.super Lkotlin/jvm/internal/Lambda;
.source "ServiceProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;->invoke(Lcom/unity3d/services/core/di/ServicesRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/unity3d/services/core/network/core/HttpClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/di/ServicesRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$40;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/unity3d/services/core/network/core/HttpClient;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$40$1;

    iget-object v1, p0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$40;->$this_registry:Lcom/unity3d/services/core/di/ServicesRegistry;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$40$1;-><init>(Lcom/unity3d/services/core/di/ServicesRegistry;Lrs/c;)V

    const/4 v1, 0x1

    invoke-static {v2, v0, v1, v2}, Lgt/e;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/core/network/core/HttpClient;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1$40;->invoke()Lcom/unity3d/services/core/network/core/HttpClient;

    move-result-object v0

    return-object v0
.end method
