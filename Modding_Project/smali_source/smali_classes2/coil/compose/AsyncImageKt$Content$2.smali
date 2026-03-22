.class final Lcoil/compose/AsyncImageKt$Content$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AsyncImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/AsyncImageKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Landroidx/compose/ui/Modifier;

.field final synthetic e:Landroidx/compose/ui/graphics/painter/Painter;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Landroidx/compose/ui/Alignment;

.field final synthetic h:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic i:F

.field final synthetic j:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic k:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil/compose/AsyncImageKt$Content$2;->d:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    iput-object p2, p0, Lcoil/compose/AsyncImageKt$Content$2;->e:Landroidx/compose/ui/graphics/painter/Painter;

    .line 4
    .line 5
    iput-object p3, p0, Lcoil/compose/AsyncImageKt$Content$2;->f:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcoil/compose/AsyncImageKt$Content$2;->g:Landroidx/compose/ui/Alignment;

    .line 8
    .line 9
    iput-object p5, p0, Lcoil/compose/AsyncImageKt$Content$2;->h:Landroidx/compose/ui/layout/ContentScale;

    .line 10
    .line 11
    iput p6, p0, Lcoil/compose/AsyncImageKt$Content$2;->i:F

    .line 12
    .line 13
    iput-object p7, p0, Lcoil/compose/AsyncImageKt$Content$2;->j:Landroidx/compose/ui/graphics/ColorFilter;

    .line 14
    .line 15
    iput p8, p0, Lcoil/compose/AsyncImageKt$Content$2;->k:I

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcoil/compose/AsyncImageKt$Content$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 9
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcoil/compose/AsyncImageKt$Content$2;->d:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lcoil/compose/AsyncImageKt$Content$2;->e:Landroidx/compose/ui/graphics/painter/Painter;

    iget-object v2, p0, Lcoil/compose/AsyncImageKt$Content$2;->f:Ljava/lang/String;

    iget-object v3, p0, Lcoil/compose/AsyncImageKt$Content$2;->g:Landroidx/compose/ui/Alignment;

    iget-object v4, p0, Lcoil/compose/AsyncImageKt$Content$2;->h:Landroidx/compose/ui/layout/ContentScale;

    iget v5, p0, Lcoil/compose/AsyncImageKt$Content$2;->i:F

    iget-object v6, p0, Lcoil/compose/AsyncImageKt$Content$2;->j:Landroidx/compose/ui/graphics/ColorFilter;

    iget p2, p0, Lcoil/compose/AsyncImageKt$Content$2;->k:I

    or-int/lit8 v8, p2, 0x1

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Lcoil/compose/AsyncImageKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
