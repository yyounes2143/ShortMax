.class public abstract Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemDownloadedDramaBinding.java"


# instance fields
.field public final a:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->a:Landroid/widget/ImageView;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    iput-object p9, p0, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 15
    .line 16
    return-void
.end method

.method public static b(Landroid/view/View;)Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;
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
    invoke-static {p0, v0}, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->d(Landroid/view/View;Ljava/lang/Object;)Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(Landroid/view/View;Ljava/lang/Object;)Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;
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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->item_downloaded_drama:I

    .line 2
    .line 3
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;

    .line 8
    .line 9
    return-object p0
.end method
