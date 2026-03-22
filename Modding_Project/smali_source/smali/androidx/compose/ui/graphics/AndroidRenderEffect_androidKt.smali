.class public final Landroidx/compose/ui/graphics/AndroidRenderEffect_androidKt;
.super Ljava/lang/Object;
.source "AndroidRenderEffect.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final asComposeRenderEffect(Landroid/graphics/RenderEffect;)Landroidx/compose/ui/graphics/RenderEffect;
    .locals 1
    .param p0    # Landroid/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    new-instance v0, Landroidx/compose/ui/graphics/AndroidRenderEffect;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/AndroidRenderEffect;-><init>(Landroid/graphics/RenderEffect;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
