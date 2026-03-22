.class public abstract Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ViewImmersionControlBinding.java"


# instance fields
.field public final a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->a:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->b:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->c:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->d:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionCoverView;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;

    .line 13
    .line 14
    return-void
.end method

.method public static b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;
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
    invoke-static {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;
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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_immersion_control:I

    .line 2
    .line 3
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ViewImmersionControlBinding;

    .line 8
    .line 9
    return-object p0
.end method
