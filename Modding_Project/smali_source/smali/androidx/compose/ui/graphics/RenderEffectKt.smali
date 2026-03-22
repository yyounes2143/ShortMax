.class public final Landroidx/compose/ui/graphics/RenderEffectKt;
.super Ljava/lang/Object;
.source "RenderEffect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final BlurEffect-3YTHUZs(FFI)Landroidx/compose/ui/graphics/BlurEffect;
    .locals 7
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Landroidx/compose/ui/graphics/BlurEffect;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, v6

    .line 6
    move v2, p0

    .line 7
    move v3, p1

    .line 8
    move v4, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/graphics/BlurEffect;-><init>(Landroidx/compose/ui/graphics/RenderEffect;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public static synthetic BlurEffect-3YTHUZs$default(FFIILjava/lang/Object;)Landroidx/compose/ui/graphics/BlurEffect;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Landroidx/compose/ui/graphics/TileMode;->Companion:Landroidx/compose/ui/graphics/TileMode$Companion;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/TileMode$Companion;->getClamp-3opZhB0()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/RenderEffectKt;->BlurEffect-3YTHUZs(FFI)Landroidx/compose/ui/graphics/BlurEffect;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final OffsetEffect(FF)Landroidx/compose/ui/graphics/OffsetEffect;
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/OffsetEffect;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    invoke-direct {v0, v1, p0, p1, v1}, Landroidx/compose/ui/graphics/OffsetEffect;-><init>(Landroidx/compose/ui/graphics/RenderEffect;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
