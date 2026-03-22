.class public interface abstract Lcom/unity3d/ads/core/domain/scar/FetchSignalsAndSendUseCase;
.super Ljava/lang/Object;
.source "FetchSignalsAndSendUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract invoke(ILcom/google/protobuf/ByteString;Lcom/unity3d/ads/TokenConfiguration;Lrs/c;)Ljava/lang/Object;
    .param p2    # Lcom/google/protobuf/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/TokenConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/unity3d/ads/TokenConfiguration;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
