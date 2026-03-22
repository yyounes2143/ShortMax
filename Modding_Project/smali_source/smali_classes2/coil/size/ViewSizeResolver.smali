.class public interface abstract Lcoil/size/ViewSizeResolver;
.super Ljava/lang/Object;
.source "ViewSizeResolver.kt"

# interfaces
.implements Ln0/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/size/ViewSizeResolver$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Ln0/h;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract getView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
