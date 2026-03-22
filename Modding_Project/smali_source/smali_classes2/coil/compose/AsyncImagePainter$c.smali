.class public final Lcoil/compose/AsyncImagePainter$c;
.super Ljava/lang/Object;
.source "ImageRequest.kt"

# interfaces
.implements Lo0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/AsyncImagePainter;->C(Lm0/f;)Lm0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcoil/compose/AsyncImagePainter;


# direct methods
.method public constructor <init>(Lcoil/compose/AsyncImagePainter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil/compose/AsyncImagePainter$c;->a:Lcoil/compose/AsyncImagePainter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcoil/compose/AsyncImagePainter$c;->a:Lcoil/compose/AsyncImagePainter;

    .line 2
    .line 3
    new-instance v1, Lcoil/compose/AsyncImagePainter$b$c;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcoil/compose/AsyncImagePainter$c;->a:Lcoil/compose/AsyncImagePainter;

    .line 8
    .line 9
    invoke-static {v2, p1}, Lcoil/compose/AsyncImagePainter;->c(Lcoil/compose/AsyncImagePainter;Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-direct {v1, p1}, Lcoil/compose/AsyncImagePainter$b$c;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lcoil/compose/AsyncImagePainter;->f(Lcoil/compose/AsyncImagePainter;Lcoil/compose/AsyncImagePainter$b;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
