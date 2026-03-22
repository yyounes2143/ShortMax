.class public final Landroidx/compose/ui/res/VectorResources_androidKt;
.super Ljava/lang/Object;
.source "VectorResources.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final loadVectorResourceInner(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;
    .locals 9
    .param p0    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/XmlResourceParser;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "res"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parser"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v7, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v7, p2, v3, v1, v2}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "attrs"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v7, p1, p0, v0}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->createVectorImageBuilder(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    move v6, v3

    .line 33
    :goto_0
    invoke-static {p2}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->isAtEnd(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    move-object v1, v7

    .line 40
    move-object v2, p1

    .line 41
    move-object v3, v0

    .line 42
    move-object v4, p0

    .line 43
    move-object v5, v8

    .line 44
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->parseCurrentVectorNode(Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;I)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 53
    .line 54
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->getConfig()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;I)V

    .line 63
    .line 64
    .line 65
    return-object p0
.end method

.method public static synthetic loadVectorResourceInner$default(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ILjava/lang/Object;)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/res/VectorResources_androidKt;->loadVectorResourceInner(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final vectorResource(Landroidx/compose/ui/graphics/vector/ImageVector$Companion;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 3
    .param p0    # Landroidx/compose/ui/graphics/vector/ImageVector$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "<this>"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x2a7894a

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p3

    .line 2
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Landroid/content/Context;

    .line 4
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x44faf204

    .line 6
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 7
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    .line 8
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    .line 9
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_1

    .line 10
    :cond_0
    const-string v1, "res"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p3, v0, p1}, Landroidx/compose/ui/res/VectorResources_androidKt;->vectorResource(Landroidx/compose/ui/graphics/vector/ImageVector$Companion;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    .line 11
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 12
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 13
    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method public static final vectorResource(Landroidx/compose/ui/graphics/vector/ImageVector$Companion;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/vector/ImageVector$Companion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "res"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    const-string p3, ""

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->seekToStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    const-string p3, "res.getXml(resId).apply { seekToStartTag() }"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Landroidx/compose/ui/res/VectorResources_androidKt;->loadVectorResourceInner(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->getImageVector()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic vectorResource$default(Landroidx/compose/ui/graphics/vector/ImageVector$Companion;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;IILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    and-int/lit8 p4, p4, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/res/VectorResources_androidKt;->vectorResource(Landroidx/compose/ui/graphics/vector/ImageVector$Companion;Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
