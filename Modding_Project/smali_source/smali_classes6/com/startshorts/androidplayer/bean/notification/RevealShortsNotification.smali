.class public final Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;
.super Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;
.source "RevealShortsNotification.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private cover:Landroid/graphics/Bitmap;
    .annotation runtime Llk/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getCover()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;->cover:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCover(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/notification/RevealShortsNotification;->cover:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method
