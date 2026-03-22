.class public final Lcom/facebook/imagepipeline/platform/PreverificationHelper;
.super Ljava/lang/Object;
.source "PreverificationHelper.kt"


# annotations
.annotation build Lcom/facebook/soloader/g;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final shouldUseHardwareBitmapConfig(Landroid/graphics/Bitmap$Config;)Z
    .locals 1
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation build Lcom/facebook/soloader/g;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/graphics/e0;->a()Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method
