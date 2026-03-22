.class public Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "DiscoverVipBoxView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final B()V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->e:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v6, 0xc

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    const-string v1, "discover"

    .line 9
    .line 10
    const-string v2, "sub_portal"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->e0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final C()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->e:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v5, 0x4

    .line 6
    const/4 v6, 0x0

    .line 7
    const-string v1, "discover"

    .line 8
    .line 9
    const-string v2, "sub_portal"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->k0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final E()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$showDiscountTip$1;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "showDiscountTip"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->b:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic y(Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final z(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lqf/h;->a:Lqf/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lqf/h;->f(Ljava/util/List;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Ljk/u;->a(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->d:I

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->e:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->E()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->C()V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final D()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->a:Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager;->p()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->z(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v0, Lud/a;->a:Lud/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lud/a;->B()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->b:Landroid/view/View;

    .line 26
    .line 27
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->z(Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_discover_vip_box:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->f:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->f:Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$a;

    .line 2
    .line 3
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->subscribe_discount:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->b:Landroid/view/View;

    .line 13
    .line 14
    sget p1, Lcom/startshorts/androidplayer/R$id;->subscribe_discount_tv:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;->c:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$b;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/DiscoverVipBoxView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
