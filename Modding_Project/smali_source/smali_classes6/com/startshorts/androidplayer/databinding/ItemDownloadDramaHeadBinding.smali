.class public abstract Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemDownloadDramaHeadBinding.java"


# instance fields
.field public final a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public static b(Landroid/view/View;)Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;->d(Landroid/view/View;Ljava/lang/Object;)Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(Landroid/view/View;Ljava/lang/Object;)Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->item_download_drama_head:I

    .line 2
    .line 3
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;

    .line 8
    .line 9
    return-object p0
.end method
