.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$b;
.super Ljava/lang/Object;
.source "Ad2SubscribeDialog.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->C(Landroid/widget/TextView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$b;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$b;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$b;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$b;->a:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$b;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$b;->a:Landroid/widget/TextView;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$b;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->r(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
