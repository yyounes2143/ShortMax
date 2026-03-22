.class public final Landroidx/core/util/AndroidXConsumerKt;
.super Ljava/lang/Object;
.source "AndroidXConsumer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final asAndroidXConsumer(Lrs/c;)Landroidx/core/util/Consumer;
    .locals 1
    .param p0    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrs/c<",
            "-TT;>;)",
            "Landroidx/core/util/Consumer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/core/util/AndroidXContinuationConsumer;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/util/AndroidXContinuationConsumer;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
