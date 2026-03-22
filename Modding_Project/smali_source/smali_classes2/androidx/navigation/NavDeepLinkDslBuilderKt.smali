.class public final Landroidx/navigation/NavDeepLinkDslBuilderKt;
.super Ljava/lang/Object;
.source "NavDeepLinkDslBuilder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final navDeepLink(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavDeepLink;
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
            "Landroidx/navigation/NavDeepLinkDslBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/navigation/NavDeepLink;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "deepLinkBuilder"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/navigation/NavDeepLinkDslBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/navigation/NavDeepLinkDslBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/navigation/NavDeepLinkDslBuilder;->build$navigation_common_ktx_release()Landroidx/navigation/NavDeepLink;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
