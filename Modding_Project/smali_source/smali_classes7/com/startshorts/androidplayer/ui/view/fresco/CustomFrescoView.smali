.class public Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
.super Lcom/facebook/drawee/view/GenericDraweeView;
.source "CustomFrescoView.java"


# static fields
.field private static i:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "+",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->n(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->n(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/view/GenericDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->n(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private n(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Lkk/f;->g()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->i:Lk2/k;

    .line 11
    .line 12
    const-string p2, "SimpleDraweeView was not initialized!"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lk2/h;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->i:Lk2/k;

    .line 18
    .line 19
    invoke-interface {p1}, Lk2/k;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->h:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 26
    .line 27
    return-void
.end method

.method public static o(Lk2/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk2/k<",
            "+",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->i:Lk2/k;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method protected getControllerBuilder()Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->h:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 2
    .line 3
    return-object v0
.end method

.method public setActualImageResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->setActualImageResource(ILjava/lang/Object;)V

    return-void
.end method

.method public setActualImageResource(ILjava/lang/Object;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Lr2/d;->g(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageRequest(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->h:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->C(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lf3/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->D(Lf3/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c()Lcom/facebook/drawee/controller/a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lf3/a;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setImageResource(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->h:Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 4
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->A(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p2

    .line 5
    invoke-interface {p2, p1}, Lf3/d;->a(Landroid/net/Uri;)Lf3/d;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lf3/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lf3/d;->b(Lf3/a;)Lf3/d;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Lf3/d;->build()Lf3/a;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lf3/a;)V

    return-void
.end method

.method public setImageURI(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->setImageURI(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageURI(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;->setImageURI(Landroid/net/Uri;Ljava/lang/Object;)V

    return-void
.end method
