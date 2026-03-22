.class public final Landroidx/compose/ui/res/PainterResources_androidKt;
.super Ljava/lang/Object;
.source "PainterResources.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final errorMessage:Ljava/lang/String; = "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final loadImageBitmapResource(Landroid/content/res/Resources;I)Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Landroidx/compose/ui/graphics/ImageBitmap;->Companion:Landroidx/compose/ui/graphics/ImageBitmap$Companion;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Landroidx/compose/ui/res/ImageResources_androidKt;->imageResource(Landroidx/compose/ui/graphics/ImageBitmap$Companion;Landroid/content/res/Resources;I)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string p1, "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method private static final loadVectorResource(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 3
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    const p4, 0x7dea3d4c

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalImageVectorCache()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    check-cast p4, Landroidx/compose/ui/res/ImageVectorCache;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/ui/res/ImageVectorCache$Key;

    .line 18
    .line 19
    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/res/ImageVectorCache$Key;-><init>(Landroid/content/res/Resources$Theme;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4, v0}, Landroidx/compose/ui/res/ImageVectorCache;->get(Landroidx/compose/ui/res/ImageVectorCache$Key;)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v1, "res.getXml(id)"

    .line 33
    .line 34
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Landroidx/compose/ui/graphics/vector/compat/XmlVectorParser_androidKt;->seekToStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "vector"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/res/VectorResources_androidKt;->loadVectorResourceInner(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p4, v0, v1}, Landroidx/compose/ui/res/ImageVectorCache;->set(Landroidx/compose/ui/res/ImageVectorCache$Key;Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    const-string p1, "Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG"

    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->getImageVector()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 74
    .line 75
    .line 76
    return-object p0
.end method

.method public static final painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 10
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const v0, 0x1c403a8f

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const v2, -0x1d58f75c

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-ne v2, v4, :cond_0

    .line 38
    .line 39
    new-instance v2, Landroid/util/TypedValue;

    .line 40
    .line 41
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 48
    .line 49
    .line 50
    check-cast v2, Landroid/util/TypedValue;

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-virtual {v1, p0, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 54
    .line 55
    .line 56
    iget-object v2, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 57
    .line 58
    const-string v5, "res"

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    const/4 v6, 0x2

    .line 63
    const/4 v7, 0x0

    .line 64
    const-string v8, ".xml"

    .line 65
    .line 66
    const/4 v9, 0x0

    .line 67
    invoke-static {v2, v8, v9, v6, v7}, Lkotlin/text/StringsKt;->h0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-ne v6, v4, :cond_1

    .line 72
    .line 73
    const v2, -0x2c0108e9

    .line 74
    .line 75
    .line 76
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v2, "context.theme"

    .line 84
    .line 85
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    shl-int/lit8 p2, p2, 0x6

    .line 92
    .line 93
    and-int/lit16 p2, p2, 0x380

    .line 94
    .line 95
    or-int/lit8 p2, p2, 0x48

    .line 96
    .line 97
    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/ui/res/PainterResources_androidKt;->loadVectorResource(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0, p1, v9}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    const p2, -0x2c01086c

    .line 110
    .line 111
    .line 112
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 113
    .line 114
    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    const v0, 0x1e7b2b64

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    or-int/2addr p2, v0

    .line 134
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-nez p2, :cond_2

    .line 139
    .line 140
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    if-ne v0, p2, :cond_3

    .line 145
    .line 146
    :cond_2
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v1, p0}, Landroidx/compose/ui/res/PainterResources_androidKt;->loadImageBitmapResource(Landroid/content/res/Resources;I)Landroidx/compose/ui/graphics/ImageBitmap;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 157
    .line 158
    .line 159
    move-object v2, v0

    .line 160
    check-cast v2, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 161
    .line 162
    new-instance p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 163
    .line 164
    const/4 v7, 0x6

    .line 165
    const/4 v8, 0x0

    .line 166
    const-wide/16 v3, 0x0

    .line 167
    .line 168
    const-wide/16 v5, 0x0

    .line 169
    .line 170
    move-object v1, p0

    .line 171
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 175
    .line 176
    .line 177
    :goto_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 178
    .line 179
    .line 180
    return-object p0
.end method
