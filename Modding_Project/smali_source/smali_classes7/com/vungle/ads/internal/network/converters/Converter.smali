.class public interface abstract Lcom/vungle/ads/internal/network/converters/Converter;
.super Ljava/lang/Object;
.source "Converter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<In:",
        "Ljava/lang/Object;",
        "Out:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract convert(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIn;)TOut;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
