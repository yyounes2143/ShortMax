.class public abstract Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogOpenShortByIdBinding.java"


# instance fields
.field public final a:Landroid/widget/EditText;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->a:Landroid/widget/EditText;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->b:Landroid/widget/TextView;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    return-void
.end method

.method public static b(Landroid/view/LayoutInflater;)Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
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
    invoke-static {p0, v0}, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->d(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_open_short_by_id:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 10
    .line 11
    return-object p0
.end method
