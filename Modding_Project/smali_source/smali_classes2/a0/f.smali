.class public final La0/f;
.super Ljava/lang/Object;
.source "ImageLoaders.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Landroid/content/Context;)Lcoil/ImageLoader;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcoil/ImageLoader$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcoil/ImageLoader$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcoil/ImageLoader$Builder;->b()Lcoil/ImageLoader;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
