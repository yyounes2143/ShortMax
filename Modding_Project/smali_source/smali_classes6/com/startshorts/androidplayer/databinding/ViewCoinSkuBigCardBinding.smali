.class public abstract Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ViewCoinSkuBigCardBinding.java"


# instance fields
.field public final a:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/widget/ImageView;
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

.field public final g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroid/widget/ImageView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;->c:Landroid/widget/ImageView;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    iput-object p9, p0, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 15
    .line 16
    iput-object p10, p0, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 17
    .line 18
    iput-object p11, p0, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;->h:Lcom/startshorts/androidplayer/ui/view/purchase/CoinSkuCardView;

    .line 19
    .line 20
    return-void
.end method

.method public static b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_coin_sku_big_card:I

    .line 2
    .line 3
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ViewCoinSkuBigCardBinding;

    .line 8
    .line 9
    return-object p0
.end method
