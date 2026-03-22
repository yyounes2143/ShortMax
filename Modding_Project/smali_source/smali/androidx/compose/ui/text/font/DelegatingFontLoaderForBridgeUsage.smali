.class public final Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;
.super Ljava/lang/Object;
.source "DelegatingFontLoaderForDeprecatedUsage.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/font/PlatformFontLoader;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final cacheKey:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/Font$ResourceLoader;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/Font$ResourceLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "loader"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;->loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;->context:Landroid/content/Context;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;->cacheKey:Ljava/lang/Object;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public awaitLoad(Landroidx/compose/ui/text/font/Font;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroidx/compose/ui/text/font/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/Font;",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/text/font/AndroidFont;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/text/font/AndroidFont;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/AndroidFont;->getTypefaceLoader()Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;->context:Landroid/content/Context;

    .line 12
    .line 13
    invoke-interface {v0, v1, p1, p2}, Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;->awaitLoad(Landroid/content/Context;Landroidx/compose/ui/text/font/AndroidFont;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;->loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    .line 19
    .line 20
    invoke-interface {p2, p1}, Landroidx/compose/ui/text/font/Font$ResourceLoader;->load(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    return-object p1
.end method

.method public getCacheKey()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;->cacheKey:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLoader$ui_text_release()Landroidx/compose/ui/text/font/Font$ResourceLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;->loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    .line 2
    .line 3
    return-object v0
.end method

.method public loadBlocking(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroidx/compose/ui/text/font/Font;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "font"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroidx/compose/ui/text/font/AndroidFont;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/ui/text/font/AndroidFont;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/AndroidFont;->getTypefaceLoader()Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-interface {v0, v1, p1}, Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;->loadBlocking(Landroid/content/Context;Landroidx/compose/ui/text/font/AndroidFont;)Landroid/graphics/Typeface;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/font/DelegatingFontLoaderForBridgeUsage;->loader:Landroidx/compose/ui/text/font/Font$ResourceLoader;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Landroidx/compose/ui/text/font/Font$ResourceLoader;->load(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    return-object p1
.end method
