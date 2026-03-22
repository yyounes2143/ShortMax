.class public final Landroidx/compose/ui/text/platform/AndroidDefaultTypeface;
.super Ljava/lang/Object;
.source "AndroidDefaultTypeface.android.kt"

# interfaces
.implements Landroidx/compose/ui/text/platform/AndroidTypeface;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lms/c;
.end annotation


# instance fields
.field private final fontFamily:Landroidx/compose/ui/text/font/FontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getDefault()Landroidx/compose/ui/text/font/SystemFontFamily;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidDefaultTypeface;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getFontFamily()Landroidx/compose/ui/text/font/FontFamily;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidDefaultTypeface;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeTypeface-PYhJU0U(Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;
    .locals 2
    .param p1    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "fontWeight"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v0, 0x1c

    .line 9
    .line 10
    if-ge p3, v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1, p2}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->getAndroidTypefaceStyle-FO1MlWM(Landroidx/compose/ui/text/font/FontWeight;I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p2, "{\n            Typeface.d\u2026)\n            )\n        }"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object p3, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;

    .line 27
    .line 28
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 29
    .line 30
    const-string v1, "DEFAULT"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight;->getWeight()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    sget-object v1, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {p2, v1}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p3, v0, p1, p2}, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_0
    return-object p1
.end method
