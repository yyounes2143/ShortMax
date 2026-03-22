.class public final Lcom/unity3d/services/core/di/ServicesRegistryKt;
.super Ljava/lang/Object;
.source "ServicesRegistry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final registry(Lkotlin/jvm/functions/Function1;)Lcom/unity3d/services/core/di/ServicesRegistry;
    .locals 1
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/unity3d/services/core/di/ServicesRegistry;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/unity3d/services/core/di/ServicesRegistry;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "registry"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/unity3d/services/core/di/ServicesRegistry;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/unity3d/services/core/di/ServicesRegistry;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
