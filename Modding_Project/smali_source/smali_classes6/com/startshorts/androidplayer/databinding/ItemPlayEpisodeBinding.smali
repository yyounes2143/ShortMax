.class public abstract Lcom/startshorts/androidplayer/databinding/ItemPlayEpisodeBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemPlayEpisodeBinding.java"


# instance fields
.field public final a:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/startshorts/androidplayer/databinding/ItemPlayEpisodeBinding;->a:Landroid/widget/ImageView;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/databinding/ItemPlayEpisodeBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/SwipingFrescoView;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/startshorts/androidplayer/databinding/ItemPlayEpisodeBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/SwipingTextureView;

    .line 9
    .line 10
    return-void
.end method
