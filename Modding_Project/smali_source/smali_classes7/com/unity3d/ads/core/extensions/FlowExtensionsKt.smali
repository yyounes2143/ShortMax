.class public final Lcom/unity3d/ads/core/extensions/FlowExtensionsKt;
.super Ljava/lang/Object;
.source "FlowExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final timeoutAfter(Lkt/b;JZLkotlin/jvm/functions/Function2;)Lkt/b;
    .locals 8
    .param p0    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkt/b<",
            "+TT;>;JZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkt/b<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/unity3d/ads/core/extensions/FlowExtensionsKt$timeoutAfter$1;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v1, v0

    .line 15
    move-wide v2, p1

    .line 16
    move v4, p3

    .line 17
    move-object v5, p4

    .line 18
    move-object v6, p0

    .line 19
    invoke-direct/range {v1 .. v7}, Lcom/unity3d/ads/core/extensions/FlowExtensionsKt$timeoutAfter$1;-><init>(JZLkotlin/jvm/functions/Function2;Lkt/b;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->k(Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static synthetic timeoutAfter$default(Lkt/b;JZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkt/b;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/extensions/FlowExtensionsKt;->timeoutAfter(Lkt/b;JZLkotlin/jvm/functions/Function2;)Lkt/b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
