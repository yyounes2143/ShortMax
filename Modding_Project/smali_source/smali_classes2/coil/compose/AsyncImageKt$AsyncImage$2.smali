.class final Lcoil/compose/AsyncImageKt$AsyncImage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AsyncImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/AsyncImageKt;->a(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V
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
.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcoil/ImageLoader;

.field final synthetic g:Landroidx/compose/ui/Modifier;

.field final synthetic h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcoil/compose/AsyncImagePainter$b;",
            "Lcoil/compose/AsyncImagePainter$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcoil/compose/AsyncImagePainter$b;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Landroidx/compose/ui/Alignment;

.field final synthetic k:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic l:F

.field final synthetic m:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic n:I

.field final synthetic o:I

.field final synthetic p:I

.field final synthetic q:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcoil/ImageLoader;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$b;",
            "+",
            "Lcoil/compose/AsyncImagePainter$b;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcoil/compose/AsyncImagePainter$b;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "IIII)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->e:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->f:Lcoil/ImageLoader;

    .line 6
    .line 7
    iput-object p4, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->g:Landroidx/compose/ui/Modifier;

    .line 8
    .line 9
    iput-object p5, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->h:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p6, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->i:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iput-object p7, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->j:Landroidx/compose/ui/Alignment;

    .line 14
    .line 15
    iput-object p8, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->k:Landroidx/compose/ui/layout/ContentScale;

    .line 16
    .line 17
    iput p9, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->l:F

    .line 18
    .line 19
    iput-object p10, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->m:Landroidx/compose/ui/graphics/ColorFilter;

    .line 20
    .line 21
    iput p11, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->n:I

    .line 22
    .line 23
    iput p12, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->o:I

    .line 24
    .line 25
    iput p13, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->p:I

    .line 26
    .line 27
    iput p14, p0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->q:I

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 31
    .line 32
    .line 33
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

    invoke-virtual {p0, p1, p2}, Lcoil/compose/AsyncImageKt$AsyncImage$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->d:Ljava/lang/Object;

    iget-object v2, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->e:Ljava/lang/String;

    iget-object v3, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->f:Lcoil/ImageLoader;

    iget-object v4, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->g:Landroidx/compose/ui/Modifier;

    iget-object v5, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->h:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->i:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->j:Landroidx/compose/ui/Alignment;

    iget-object v8, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->k:Landroidx/compose/ui/layout/ContentScale;

    iget v9, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->l:F

    iget-object v10, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->m:Landroidx/compose/ui/graphics/ColorFilter;

    iget v11, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->n:I

    iget v12, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->o:I

    or-int/lit8 v13, v12, 0x1

    iget v14, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->p:I

    iget v15, v0, Lcoil/compose/AsyncImageKt$AsyncImage$2;->q:I

    move-object/from16 v12, p1

    invoke-static/range {v1 .. v15}, Lcoil/compose/AsyncImageKt;->a(Ljava/lang/Object;Ljava/lang/String;Lcoil/ImageLoader;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V

    return-void
.end method
