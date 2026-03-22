.class public interface abstract Lcom/vungle/ads/FullscreenAd;
.super Ljava/lang/Object;
.source "BaseAd.kt"

# interfaces
.implements Lcom/vungle/ads/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/FullscreenAd$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract play(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
