.class public interface abstract Lx3/a;
.super Ljava/lang/Object;
.source "DrawableFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract createDrawable(Ly3/e;)Landroid/graphics/drawable/Drawable;
    .param p1    # Ly3/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract supportsImageType(Ly3/e;)Z
    .param p1    # Ly3/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
