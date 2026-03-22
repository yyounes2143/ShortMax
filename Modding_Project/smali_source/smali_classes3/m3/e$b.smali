.class Lm3/e$b;
.super Ljava/lang/Object;
.source "AnimatedImageFactoryImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm3/e;->e(Ll3/b;Landroid/graphics/Bitmap$Config;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lm3/e;


# direct methods
.method constructor <init>(Lm3/e;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm3/e$b;->b:Lm3/e;

    .line 2
    .line 3
    iput-object p2, p0, Lm3/e$b;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCachedBitmap(I)Lo2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm3/e$b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lo2/a;

    .line 8
    .line 9
    invoke-static {p1}, Lo2/a;->p(Lo2/a;)Lo2/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public onIntermediateResult(ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method
