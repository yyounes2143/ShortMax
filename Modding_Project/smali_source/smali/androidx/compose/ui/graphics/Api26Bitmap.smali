.class final Landroidx/compose/ui/graphics/Api26Bitmap;
.super Ljava/lang/Object;
.source "AndroidImageBitmap.android.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/Api26Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/Api26Bitmap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/graphics/Api26Bitmap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/graphics/Api26Bitmap;->INSTANCE:Landroidx/compose/ui/graphics/Api26Bitmap;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final composeColorSpace$ui_graphics_release(Landroid/graphics/Bitmap;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/h0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/ColorSpace;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/graphics/Api26Bitmap;->composeColorSpace$ui_graphics_release(Landroid/graphics/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final composeColorSpace$ui_graphics_release(Landroid/graphics/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 1
    .param p0    # Landroid/graphics/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroidx/compose/ui/graphics/s0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroidx/compose/ui/graphics/m0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAces()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-static {}, Landroidx/compose/ui/graphics/o0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAcescg()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto/16 :goto_0

    .line 8
    :cond_2
    invoke-static {}, Landroidx/compose/ui/graphics/p0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAdobeRgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto/16 :goto_0

    .line 10
    :cond_3
    invoke-static {}, Landroidx/compose/ui/graphics/q0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getBt2020()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto/16 :goto_0

    .line 12
    :cond_4
    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getBt709()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto/16 :goto_0

    .line 14
    :cond_5
    invoke-static {}, Landroidx/compose/ui/graphics/v0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieLab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object p0

    goto/16 :goto_0

    .line 16
    :cond_6
    invoke-static {}, Landroidx/compose/ui/graphics/w0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieXyz()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object p0

    goto/16 :goto_0

    .line 18
    :cond_7
    invoke-static {}, Landroidx/compose/ui/graphics/x0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getDciP3()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto/16 :goto_0

    .line 20
    :cond_8
    invoke-static {}, Landroidx/compose/ui/graphics/y0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getDisplayP3()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto/16 :goto_0

    .line 22
    :cond_9
    invoke-static {}, Landroidx/compose/ui/graphics/z0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getExtendedSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto/16 :goto_0

    .line 24
    :cond_a
    invoke-static {}, Landroidx/compose/ui/graphics/i0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    .line 25
    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getLinearExtendedSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto :goto_0

    .line 27
    :cond_b
    invoke-static {}, Landroidx/compose/ui/graphics/j0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 28
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getLinearSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto :goto_0

    .line 29
    :cond_c
    invoke-static {}, Landroidx/compose/ui/graphics/k0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 30
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getNtsc1953()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto :goto_0

    .line 31
    :cond_d
    invoke-static {}, Landroidx/compose/ui/graphics/l0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 32
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getProPhotoRgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto :goto_0

    .line 33
    :cond_e
    invoke-static {}, Landroidx/compose/ui/graphics/n0;->a()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 34
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSmpteC()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    goto :goto_0

    .line 35
    :cond_f
    sget-object p0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final createBitmap-x__-hDU$ui_graphics_release(IIIZLandroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/Bitmap;
    .locals 7
    .param p4    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "colorSpace"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->toBitmapConfig-1JJdX4A(I)Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    invoke-static {p4}, Landroidx/compose/ui/graphics/Api26Bitmap;->toFrameworkColorSpace$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/ColorSpace;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, p0

    .line 16
    move v3, p1

    .line 17
    move v5, p3

    .line 18
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/graphics/r0;->a(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "createBitmap(\n          \u2026orkColorSpace()\n        )"

    .line 23
    .line 24
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public static final toFrameworkColorSpace$ui_graphics_release(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/ColorSpace;
    .locals 2
    .param p0    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
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
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroidx/compose/ui/graphics/s0;->a()Landroid/graphics/ColorSpace$Named;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAces()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-static {}, Landroidx/compose/ui/graphics/m0;->a()Landroid/graphics/ColorSpace$Named;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAcescg()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-static {}, Landroidx/compose/ui/graphics/o0;->a()Landroid/graphics/ColorSpace$Named;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getAdobeRgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-static {}, Landroidx/compose/ui/graphics/p0;->a()Landroid/graphics/ColorSpace$Named;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getBt2020()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-static {}, Landroidx/compose/ui/graphics/q0;->a()Landroid/graphics/ColorSpace$Named;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getBt709()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_5

    .line 97
    .line 98
    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroid/graphics/ColorSpace$Named;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieLab()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    invoke-static {}, Landroidx/compose/ui/graphics/v0;->a()Landroid/graphics/ColorSpace$Named;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    goto/16 :goto_0

    .line 119
    .line 120
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getCieXyz()Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_7

    .line 129
    .line 130
    invoke-static {}, Landroidx/compose/ui/graphics/w0;->a()Landroid/graphics/ColorSpace$Named;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getDciP3()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_8

    .line 145
    .line 146
    invoke-static {}, Landroidx/compose/ui/graphics/x0;->a()Landroid/graphics/ColorSpace$Named;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getDisplayP3()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_9

    .line 161
    .line 162
    invoke-static {}, Landroidx/compose/ui/graphics/y0;->a()Landroid/graphics/ColorSpace$Named;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    goto :goto_0

    .line 167
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getExtendedSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_a

    .line 176
    .line 177
    invoke-static {}, Landroidx/compose/ui/graphics/z0;->a()Landroid/graphics/ColorSpace$Named;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    goto :goto_0

    .line 182
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getLinearExtendedSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_b

    .line 191
    .line 192
    invoke-static {}, Landroidx/compose/ui/graphics/i0;->a()Landroid/graphics/ColorSpace$Named;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    goto :goto_0

    .line 197
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getLinearSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_c

    .line 206
    .line 207
    invoke-static {}, Landroidx/compose/ui/graphics/j0;->a()Landroid/graphics/ColorSpace$Named;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    goto :goto_0

    .line 212
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getNtsc1953()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_d

    .line 221
    .line 222
    invoke-static {}, Landroidx/compose/ui/graphics/k0;->a()Landroid/graphics/ColorSpace$Named;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    goto :goto_0

    .line 227
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getProPhotoRgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_e

    .line 236
    .line 237
    invoke-static {}, Landroidx/compose/ui/graphics/l0;->a()Landroid/graphics/ColorSpace$Named;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    goto :goto_0

    .line 242
    :cond_e
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSmpteC()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p0

    .line 250
    if-eqz p0, :cond_f

    .line 251
    .line 252
    invoke-static {}, Landroidx/compose/ui/graphics/n0;->a()Landroid/graphics/ColorSpace$Named;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    goto :goto_0

    .line 257
    :cond_f
    invoke-static {}, Landroidx/compose/ui/graphics/s0;->a()Landroid/graphics/ColorSpace$Named;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    :goto_0
    invoke-static {p0}, Landroidx/compose/ui/graphics/u0;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    const-string v0, "get(frameworkNamedSpace)"

    .line 266
    .line 267
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    return-object p0
.end method
