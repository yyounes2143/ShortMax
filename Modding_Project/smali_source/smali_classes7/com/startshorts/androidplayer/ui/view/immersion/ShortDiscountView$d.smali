.class public final Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$d;
.super Landroid/os/CountDownTimer;
.source "ShortDiscountView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->A(Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;


# direct methods
.method constructor <init>(JLandroid/view/View;Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$d;->a:Landroid/view/View;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$d;->b:Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;

    .line 4
    .line 5
    const-wide/16 p3, 0x3e8

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$d;->a:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->x(JLandroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$d;->b:Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->getMCallback()Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$a;->c()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$d;->b:Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->w(Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;Landroid/os/CountDownTimer;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView$d;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/ShortDiscountView;->x(JLandroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
