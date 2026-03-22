.class public final Landroidx/compose/ui/graphics/AndroidRenderEffect;
.super Landroidx/compose/ui/graphics/RenderEffect;
.source "AndroidRenderEffect.android.kt"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final androidRenderEffect:Landroid/graphics/RenderEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/RenderEffect;)V
    .locals 1
    .param p1    # Landroid/graphics/RenderEffect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "androidRenderEffect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/RenderEffect;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidRenderEffect;->androidRenderEffect:Landroid/graphics/RenderEffect;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected createRenderEffect()Landroid/graphics/RenderEffect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidRenderEffect;->androidRenderEffect:Landroid/graphics/RenderEffect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAndroidRenderEffect()Landroid/graphics/RenderEffect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidRenderEffect;->androidRenderEffect:Landroid/graphics/RenderEffect;

    .line 2
    .line 3
    return-object v0
.end method
