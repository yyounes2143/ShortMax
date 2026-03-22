.class public abstract Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemVipChooseBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->d:Landroid/widget/ImageView;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 13
    .line 14
    iput-object p9, p0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->f:Landroid/widget/TextView;

    .line 15
    .line 16
    return-void
.end method

.method public static b(Landroid/view/View;)Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;
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
    invoke-static {p0, v0}, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;->d(Landroid/view/View;Ljava/lang/Object;)Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(Landroid/view/View;Ljava/lang/Object;)Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;
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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->item_vip_choose:I

    .line 2
    .line 3
    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ItemVipChooseBinding;

    .line 8
    .line 9
    return-object p0
.end method
