.class public abstract Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemProfileMenuNormalBinding.java"


# instance fields
.field public final a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected c:Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;->b:Landroid/widget/ImageView;

    .line 7
    .line 8
    return-void
.end method
