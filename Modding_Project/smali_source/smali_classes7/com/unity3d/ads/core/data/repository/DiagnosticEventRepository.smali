.class public interface abstract Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;
.super Ljava/lang/Object;
.source "DiagnosticEventRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract addDiagnosticEvent(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;)V
    .param p1    # Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract clear()V
.end method

.method public abstract configure(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract flush()V
.end method

.method public abstract getDiagnosticEvents()Lkt/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/f<",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
