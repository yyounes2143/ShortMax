.class final Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SingletonAsyncImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/SingletonAsyncImageKt;->a(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V
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

.field final synthetic f:Landroidx/compose/ui/Modifier;

.field final synthetic g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcoil/compose/AsyncImagePainter$b;",
            "Lcoil/compose/AsyncImagePainter$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcoil/compose/AsyncImagePainter$b;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Landroidx/compose/ui/Alignment;

.field final synthetic j:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic k:F

.field final synthetic l:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic m:I

.field final synthetic n:I

.field final synthetic o:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
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
            "III)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->e:Ljava/lang/String;

    iput-object p3, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->f:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->g:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->h:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->i:Landroidx/compose/ui/Alignment;

    iput-object p7, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->j:Landroidx/compose/ui/layout/ContentScale;

    iput p8, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->k:F

    iput-object p9, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->l:Landroidx/compose/ui/graphics/ColorFilter;

    iput p10, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->m:I

    iput p11, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->n:I

    iput p12, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->o:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

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

    invoke-virtual {p0, p1, p2}, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->e:Ljava/lang/String;

    iget-object v2, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->f:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->g:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->h:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->i:Landroidx/compose/ui/Alignment;

    iget-object v6, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->j:Landroidx/compose/ui/layout/ContentScale;

    iget v7, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->k:F

    iget-object v8, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->l:Landroidx/compose/ui/graphics/ColorFilter;

    iget v9, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->m:I

    iget p2, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->n:I

    or-int/lit8 v11, p2, 0x1

    iget v12, p0, Lcoil/compose/SingletonAsyncImageKt$AsyncImage$2;->o:I

    move-object v10, p1

    invoke-static/range {v0 .. v12}, Lcoil/compose/SingletonAsyncImageKt;->a(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V

    return-void
.end method
