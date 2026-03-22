.class public final Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$b;
.super Ljava/lang/Object;
.source "AdFreeDramaDialogFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$b;->a:Landroid/view/View;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$b;->b:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$b;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$b;->b:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->I(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
