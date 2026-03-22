.class final Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;
.super Ljava/lang/Object;
.source "AndroidRenderEffect.android.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;->INSTANCE:Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;

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


# virtual methods
.method public final createBlurEffect-8A-3gB4(Landroidx/compose/ui/graphics/RenderEffect;FFI)Landroid/graphics/RenderEffect;
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "{\n            android.gr\u2026)\n            )\n        }"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {p4}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->toAndroidTileMode-0vamqd0(I)Landroid/graphics/Shader$TileMode;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2, p3, p1}, Landroidx/compose/ui/graphics/e1;->a(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/RenderEffect;->asAndroidRenderEffect()Landroid/graphics/RenderEffect;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p4}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->toAndroidTileMode-0vamqd0(I)Landroid/graphics/Shader$TileMode;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    invoke-static {p2, p3, p1, p4}, Landroidx/compose/ui/graphics/f1;->a(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object p1
.end method

.method public final createOffsetEffect-Uv8p0NA(Landroidx/compose/ui/graphics/RenderEffect;J)Landroid/graphics/RenderEffect;
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/g1;->a(FF)Landroid/graphics/RenderEffect;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "{\n            android.gr\u2026et.x, offset.y)\n        }"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/RenderEffect;->asAndroidRenderEffect()Landroid/graphics/RenderEffect;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p2, p1}, Landroidx/compose/ui/graphics/h1;->a(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string p2, "{\n            android.gr\u2026)\n            )\n        }"

    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-object p1
.end method
