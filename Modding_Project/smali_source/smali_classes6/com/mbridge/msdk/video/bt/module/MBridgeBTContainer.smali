.class public Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;
.super Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;
.source "MBridgeBTContainer.java"

# interfaces
.implements Lcom/mbridge/msdk/video/signal/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$f;,
        Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$e;
    }
.end annotation


# static fields
.field private static final V:Ljava/lang/String; = "MBridgeBTContainer"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/videocommon/download/a;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/mbridge/msdk/video/bt/module/listener/a;

.field private H:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

.field private I:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

.field private J:Lcom/mbridge/msdk/video/bt/module/listener/b;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Z

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Lcom/mbridge/msdk/video/dynview/listener/d;

.field private R:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

.field private S:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

.field private T:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

.field private U:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

.field private r:I

.field private s:I

.field private t:Landroid/widget/FrameLayout;

.field private u:Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

.field private v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private w:Landroid/view/LayoutInflater;

.field private x:Landroid/content/Context;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->r:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->s:I

    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->A:Z

    .line 5
    iput-boolean v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Z

    .line 6
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->S:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 8
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->T:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    .line 9
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->U:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    .line 10
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->r:I

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->s:I

    .line 14
    iput-boolean p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->A:Z

    .line 15
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Z

    .line 16
    iput-boolean p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Z

    const/4 p2, 0x0

    .line 17
    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->S:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 18
    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->T:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    .line 19
    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->U:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    .line 20
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;I)I
    .locals 0

    .line 4
    iput p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->O:I

    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->y:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method private a(IIII)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 15
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-lez p3, :cond_2

    .line 16
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_2
    if-lez p2, :cond_3

    .line 17
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_3
    if-lez p4, :cond_4

    .line 18
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->y:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    .line 21
    :try_start_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 23
    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 24
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->z:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 25
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 26
    :goto_1
    sget-object p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->Q:Lcom/mbridge/msdk/video/dynview/listener/d;

    if-nez v0, :cond_0

    .line 8
    const-string p1, "ChoiceOneCallback is null"

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->b(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->Q:Lcom/mbridge/msdk/video/dynview/listener/d;

    const-string v2, "choice_one_callback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/mbridge/msdk/video/dynview/b;->a()Lcom/mbridge/msdk/video/dynview/b;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    new-instance v3, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$b;

    invoke-direct {v3, p0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$b;-><init>(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/mbridge/msdk/video/dynview/b;->a(Landroid/content/Context;Ljava/util/List;Lcom/mbridge/msdk/video/dynview/listener/h;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->N:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 3

    .line 2
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/a$a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get BT wraper.getTag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/videocommon/a$a;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/a$a;->b()Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/videocommon/download/a;
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->F:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/videocommon/download/a;

    .line 9
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    sget-object p1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    const-string/jumbo v0, "tempContainer task initSuccess"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    return-object p0
.end method

.method private d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 6

    .line 2
    const-string v0, "encrypt_p="

    .line 3
    const-string v1, "irlfa="

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/db/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/b;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mbridge/msdk/foundation/db/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mbridge/msdk/foundation/entity/d;

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/d;->c()I

    move-result v5

    .line 8
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/foundation/entity/d;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/d;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v5, v4, :cond_0

    .line 9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lcom/mbridge/msdk/video/bt/module/orglistener/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Z

    return p0
.end method

.method static synthetic k(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private k()Lcom/mbridge/msdk/video/bt/module/listener/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->J:Lcom/mbridge/msdk/video/bt/module/listener/b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$c;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$c;-><init>(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->J:Lcom/mbridge/msdk/video/bt/module/listener/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->J:Lcom/mbridge/msdk/video/bt/module/listener/b;

    return-object v0
.end method

.method static synthetic l(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->T:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    return-object p0
.end method

.method private l()V
    .locals 3

    .line 2
    const-string v0, "omsdk"

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->S:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/iab/omid/library/mmadbridge/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 4
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->S:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/AdSession;->start()V

    .line 5
    const-string v1, "btc:  adSession.start();"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->U:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    if-eqz v1, :cond_0

    .line 7
    const-string v1, "btc:   adEvents.loaded"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/mmadbridge/adsession/media/Position;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/mmadbridge/adsession/media/Position;)Lcom/iab/omid/library/mmadbridge/adsession/media/VastProperties;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->U:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    invoke-virtual {v2, v1}, Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;->loaded(Lcom/iab/omid/library/mmadbridge/adsession/media/VastProperties;)V

    .line 10
    const-string v1, "btc:   adEvents.impressionOccurred"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->U:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;->impressionOccurred()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic m(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lcom/mbridge/msdk/video/bt/module/orglistener/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->I:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->t:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lcom/mbridge/msdk/video/bt/module/listener/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addNativeCloseButtonWhenWebViewCrash()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/high16 v2, 0x42400000    # 48.0f

    .line 23
    .line 24
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/high16 v3, 0x41a00000    # 20.0f

    .line 37
    .line 38
    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x5

    .line 51
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "mbridge_reward_close"

    .line 65
    .line 66
    const-string v3, "drawable"

    .line 67
    .line 68
    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    .line 74
    .line 75
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$d;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$d;-><init>(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void
.end method

.method public appendSubView(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    if-eqz p3, :cond_5

    .line 8
    .line 9
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "left"

    .line 18
    .line 19
    const/16 v3, -0x3e7

    .line 20
    .line 21
    invoke-virtual {p3, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string/jumbo v4, "top"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const-string v5, "right"

    .line 33
    .line 34
    invoke-virtual {p3, v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const-string v6, "bottom"

    .line 39
    .line 40
    invoke-virtual {p3, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eq v2, v3, :cond_0

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    int-to-float v2, v2

    .line 49
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_0
    :goto_0
    if-eq v4, v3, :cond_1

    .line 60
    .line 61
    if-eqz v1, :cond_1

    .line 62
    .line 63
    int-to-float v2, v4

    .line 64
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 69
    .line 70
    :cond_1
    if-eq v5, v3, :cond_2

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    int-to-float v2, v5

    .line 75
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 80
    .line 81
    :cond_2
    if-eq v6, v3, :cond_3

    .line 82
    .line 83
    if-eqz v1, :cond_3

    .line 84
    .line 85
    int-to-float v2, v6

    .line 86
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 91
    .line 92
    :cond_3
    const-string/jumbo v1, "width"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const-string v2, "height"

    .line 100
    .line 101
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result p3

    .line 105
    if-lez v1, :cond_4

    .line 106
    .line 107
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 108
    .line 109
    :cond_4
    if-lez p3, :cond_5

    .line 110
    .line 111
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 112
    .line 113
    :cond_5
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 117
    .line 118
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setActivity(Landroid/app/Activity;)V

    .line 119
    .line 120
    .line 121
    iget p1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setMute(I)V

    .line 124
    .line 125
    .line 126
    iget-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->A:Z

    .line 127
    .line 128
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setBidCampaign(Z)V

    .line 129
    .line 130
    .line 131
    iget-boolean p1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setIV(Z)V

    .line 134
    .line 135
    .line 136
    iget-boolean p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->B:Z

    .line 137
    .line 138
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setBigOffer(Z)V

    .line 139
    .line 140
    .line 141
    iget p1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:I

    .line 142
    .line 143
    iget p3, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->n:I

    .line 144
    .line 145
    iget v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->o:I

    .line 146
    .line 147
    invoke-virtual {p2, p1, p3, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setIVRewardEnable(III)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->I:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 151
    .line 152
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setShowRewardListener(Lcom/mbridge/msdk/video/bt/module/orglistener/h;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->getCampaign()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/videocommon/download/a;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setCampaignDownLoadTask(Lcom/mbridge/msdk/videocommon/download/a;)V

    .line 164
    .line 165
    .line 166
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k()Lcom/mbridge/msdk/video/bt/module/listener/b;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setMBridgeTempCallback(Lcom/mbridge/msdk/video/bt/module/listener/b;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-interface {p1}, Lcom/mbridge/msdk/video/signal/a;->b()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setWebViewFront(I)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->x:Landroid/content/Context;

    .line 185
    .line 186
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->init(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onCreate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :goto_1
    sget-object p2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_2
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->R:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-interface {v0, v1, p1}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(Ljava/lang/String;)V

    return-void
.end method

.method public broadcast(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-string v0, "broadcast"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "code"

    .line 13
    .line 14
    iget v3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->r:I

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    const-string v2, "id"

    .line 20
    .line 21
    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    const-string v2, "eventName"

    .line 27
    .line 28
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string p1, "data"

    .line 32
    .line 33
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 41
    .line 42
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x2

    .line 51
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, p2, v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p1, p2, v0, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    :goto_0
    return-void
.end method

.method public click(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method protected e(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public findID(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "id"

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public findLayout(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "layout"

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getAdEvents()Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->U:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdSession()Lcom/iab/omid/library/mmadbridge/adsession/AdSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->S:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCampaigns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoEvents()Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->T:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    .line 2
    .line 3
    return-object v0
.end method

.method public handlerH5Exception(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->x:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->w:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/view/View;

    .line 40
    .line 41
    instance-of v2, v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    check-cast v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onBackPressed()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    instance-of v2, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    check-cast v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onBackPressed()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    instance-of v2, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    .line 64
    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    check-cast v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :goto_1
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/view/View;

    .line 40
    .line 41
    instance-of v2, v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    check-cast v1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    instance-of v2, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    check-cast v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    instance-of v2, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    .line 64
    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    check-cast v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    .line 68
    .line 69
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :goto_1
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method

.method public onCreate(Z)V
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "_"

    .line 4
    .line 5
    :try_start_0
    const-string v2, "mbridge_bt_container"

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->findLayout(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/h0;->a(I)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    const-string p1, "mbridge_bt_container layout null"

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->b(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_0
    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->w:Landroid/view/LayoutInflater;

    .line 27
    .line 28
    invoke-virtual {v3, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroid/widget/FrameLayout;

    .line 33
    .line 34
    iput-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->t:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    const-string p1, "ViewIds null"

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->b(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-lez v2, :cond_2

    .line 56
    .line 57
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iput-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    iput-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->M:Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move-object v4, v0

    .line 83
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v5, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->c(Ljava/lang/String;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iput-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 116
    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v5, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v2}, Lcom/mbridge/msdk/videocommon/a;->e(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->l()V

    .line 149
    .line 150
    .line 151
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 152
    .line 153
    if-eqz v2, :cond_d

    .line 154
    .line 155
    new-instance p1, Lcom/mbridge/msdk/video/signal/factory/b;

    .line 156
    .line 157
    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 158
    .line 159
    invoke-direct {p1, v4, p0, v2}, Lcom/mbridge/msdk/video/signal/factory/b;-><init>(Landroid/app/Activity;Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Landroid/webkit/WebView;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->registerJsFactory(Lcom/mbridge/msdk/video/signal/factory/IJSFactory;)V

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 166
    .line 167
    invoke-virtual {v2, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setApiManagerJSFactory(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-eqz v2, :cond_3

    .line 177
    .line 178
    const-string p1, "preload template webview is null or load error"

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->b(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 185
    .line 186
    invoke-virtual {v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    instance-of v2, v2, Lcom/mbridge/msdk/video/signal/impl/k;

    .line 191
    .line 192
    const/4 v4, 0x0

    .line 193
    const/4 v5, 0x1

    .line 194
    if-eqz v2, :cond_5

    .line 195
    .line 196
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 197
    .line 198
    invoke-virtual {v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Lcom/mbridge/msdk/video/signal/impl/k;

    .line 203
    .line 204
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/video/signal/factory/b;->a(Lcom/mbridge/msdk/video/signal/impl/k;)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 208
    .line 209
    if-eqz p1, :cond_4

    .line 210
    .line 211
    new-instance p1, Lorg/json/JSONObject;

    .line 212
    .line 213
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 214
    .line 215
    .line 216
    sget-object v2, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-static {v6}, Lcom/mbridge/msdk/foundation/tools/u0;->d(Landroid/content/Context;)F

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    float-to-double v6, v6

    .line 227
    invoke-virtual {p1, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .line 229
    .line 230
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    .line 231
    .line 232
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v6, "name"

    .line 236
    .line 237
    iget-object v7, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 238
    .line 239
    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/entity/c;->c()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    .line 245
    .line 246
    const-string v6, "amount"

    .line 247
    .line 248
    iget-object v7, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 249
    .line 250
    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/entity/c;->a()I

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 255
    .line 256
    .line 257
    const-string v6, "id"

    .line 258
    .line 259
    iget-object v7, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->i:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    .line 263
    .line 264
    const-string/jumbo v6, "userId"

    .line 265
    .line 266
    .line 267
    iget-object v7, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->g:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    .line 271
    .line 272
    const-string v6, "reward"

    .line 273
    .line 274
    invoke-virtual {p1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    .line 276
    .line 277
    const-string v2, "playVideoMute"

    .line 278
    .line 279
    iget v6, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    .line 280
    .line 281
    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 282
    .line 283
    .line 284
    const-string v2, "extra"

    .line 285
    .line 286
    iget-object v6, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->P:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :catch_0
    move-exception v2

    .line 293
    goto :goto_1

    .line 294
    :catch_1
    move-exception v2

    .line 295
    goto :goto_2

    .line 296
    :goto_1
    :try_start_2
    sget-object v6, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-static {v6, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_3

    .line 306
    :goto_2
    sget-object v6, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-static {v6, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :goto_3
    new-instance v2, Lcom/mbridge/msdk/video/bt/module/orglistener/c;

    .line 316
    .line 317
    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k()Lcom/mbridge/msdk/video/bt/module/listener/b;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    invoke-direct {v2, v6, v0}, Lcom/mbridge/msdk/video/bt/module/orglistener/c;-><init>(Lcom/mbridge/msdk/video/bt/module/listener/b;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iput-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->I:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 325
    .line 326
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    :try_start_3
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 331
    .line 332
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 333
    .line 334
    .line 335
    const-string/jumbo v2, "type"

    .line 336
    .line 337
    .line 338
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-virtual {v0, v2, v6}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    const-string v6, "2000133"

    .line 350
    .line 351
    iget-object v7, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 352
    .line 353
    invoke-virtual {v2, v6, v7, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 354
    .line 355
    .line 356
    :catch_2
    :try_start_4
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSNotifyProxy()Lcom/mbridge/msdk/video/signal/g;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-interface {v0, p1}, Lcom/mbridge/msdk/video/signal/g;->a(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-interface {p1, v5}, Lcom/mbridge/msdk/video/signal/a;->b(Z)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    new-instance v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$f;

    .line 375
    .line 376
    invoke-direct {v0, p0, v4}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$f;-><init>(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$a;)V

    .line 377
    .line 378
    .line 379
    invoke-interface {p1, v0}, Lcom/mbridge/msdk/video/signal/a;->a(Lcom/mbridge/msdk/video/signal/a$a;)V

    .line 380
    .line 381
    .line 382
    :cond_4
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 383
    .line 384
    .line 385
    move-result-object p1

    .line 386
    check-cast p1, Lcom/mbridge/msdk/video/signal/impl/d;

    .line 387
    .line 388
    iget-object p1, p1, Lcom/mbridge/msdk/video/signal/impl/a;->m:Lcom/mbridge/msdk/video/signal/a$a;

    .line 389
    .line 390
    invoke-interface {p1}, Lcom/mbridge/msdk/video/signal/a$a;->onInitSuccess()V

    .line 391
    .line 392
    .line 393
    :cond_5
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 394
    .line 395
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 396
    .line 397
    .line 398
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 403
    .line 404
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {p1, v0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    if-eqz p1, :cond_c

    .line 411
    .line 412
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/lang/String;

    .line 413
    .line 414
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-eqz v0, :cond_c

    .line 419
    .line 420
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/lang/String;

    .line 421
    .line 422
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    check-cast v0, Landroid/view/View;

    .line 427
    .line 428
    instance-of v2, v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    .line 429
    .line 430
    if-eqz v2, :cond_b

    .line 431
    .line 432
    check-cast v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    .line 433
    .line 434
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->u:Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 435
    .line 436
    :try_start_5
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->getBtWebView()Landroid/webkit/WebView;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    check-cast v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 441
    .line 442
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    check-cast v2, Lcom/mbridge/msdk/video/signal/impl/k;

    .line 447
    .line 448
    iget-object v6, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->U:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    .line 449
    .line 450
    invoke-virtual {v2, v6}, Lcom/mbridge/msdk/video/signal/impl/a;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;)V

    .line 451
    .line 452
    .line 453
    iget-object v6, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->T:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    .line 454
    .line 455
    invoke-virtual {v2, v6}, Lcom/mbridge/msdk/video/signal/impl/a;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;)V

    .line 456
    .line 457
    .line 458
    iget-object v6, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->S:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 459
    .line 460
    invoke-virtual {v2, v6}, Lcom/mbridge/msdk/video/signal/impl/a;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/AdSession;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 464
    .line 465
    .line 466
    goto :goto_4

    .line 467
    :catch_3
    move-exception v0

    .line 468
    :try_start_6
    sget-object v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    :goto_4
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    new-instance v2, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .line 485
    .line 486
    iget-object v6, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 487
    .line 488
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    new-instance v6, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$a;

    .line 502
    .line 503
    invoke-direct {v6, p0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$a;-><init>(Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v0, v2, v6}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    .line 507
    .line 508
    .line 509
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->u:Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    .line 510
    .line 511
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 512
    .line 513
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 514
    .line 515
    const/4 v7, -0x1

    .line 516
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0, v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 520
    .line 521
    .line 522
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .line 530
    .line 531
    iget-object v6, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 532
    .line 533
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const/4 v6, 0x2

    .line 540
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .line 558
    .line 559
    iget-object v6, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 560
    .line 561
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;)Lcom/mbridge/msdk/widget/FeedBackButton;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a()Z

    .line 583
    .line 584
    .line 585
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 586
    if-eqz v2, :cond_8

    .line 587
    .line 588
    if-eqz v0, :cond_8

    .line 589
    .line 590
    :try_start_7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 595
    .line 596
    move-object v4, v2

    .line 597
    goto :goto_5

    .line 598
    :catch_4
    move-exception v2

    .line 599
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 600
    .line 601
    .line 602
    :goto_5
    if-nez v4, :cond_6

    .line 603
    .line 604
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 605
    .line 606
    sget v2, Lcom/mbridge/msdk/foundation/feedback/b;->e:I

    .line 607
    .line 608
    sget v5, Lcom/mbridge/msdk/foundation/feedback/b;->d:I

    .line 609
    .line 610
    invoke-direct {v4, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 611
    .line 612
    .line 613
    :cond_6
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    const/high16 v5, 0x41200000    # 10.0f

    .line 622
    .line 623
    invoke-static {v2, v5}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 628
    .line 629
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    invoke-static {v2, v5}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/content/Context;F)I

    .line 638
    .line 639
    .line 640
    move-result v2

    .line 641
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 642
    .line 643
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    check-cast v2, Landroid/view/ViewGroup;

    .line 651
    .line 652
    if-eqz v2, :cond_7

    .line 653
    .line 654
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 655
    .line 656
    .line 657
    :cond_7
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->u:Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    .line 658
    .line 659
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 660
    .line 661
    .line 662
    :cond_8
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->u:Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    .line 663
    .line 664
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/lang/String;

    .line 665
    .line 666
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 667
    .line 668
    .line 669
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/lang/String;

    .line 670
    .line 671
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->u:Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    .line 672
    .line 673
    invoke-virtual {p1, v0, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 685
    .line 686
    .line 687
    move-result v2

    .line 688
    if-eqz v2, :cond_a

    .line 689
    .line 690
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    check-cast v2, Landroid/view/View;

    .line 695
    .line 696
    instance-of v4, v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTRootLayout;

    .line 697
    .line 698
    if-eqz v4, :cond_9

    .line 699
    .line 700
    check-cast v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTRootLayout;

    .line 701
    .line 702
    invoke-virtual {v2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->getInstanceId()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    iput-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->K:Ljava/lang/String;

    .line 707
    .line 708
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->t:Landroid/widget/FrameLayout;

    .line 709
    .line 710
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 711
    .line 712
    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    .line 717
    .line 718
    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->K:Ljava/lang/String;

    .line 719
    .line 720
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->K:Ljava/lang/String;

    .line 724
    .line 725
    invoke-virtual {p1, v0, p0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    :cond_b
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 729
    .line 730
    .line 731
    move-result-object p1

    .line 732
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 733
    .line 734
    iget v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->j:I

    .line 735
    .line 736
    invoke-virtual {p1, v0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/String;I)V

    .line 737
    .line 738
    .line 739
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 740
    .line 741
    .line 742
    move-result-object p1

    .line 743
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/lang/String;

    .line 744
    .line 745
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 746
    .line 747
    invoke-virtual {p1, v0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 751
    .line 752
    .line 753
    move-result-object p1

    .line 754
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->K:Ljava/lang/String;

    .line 755
    .line 756
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 757
    .line 758
    invoke-virtual {p1, v0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 762
    .line 763
    .line 764
    move-result-object p1

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    .line 766
    .line 767
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    .line 769
    .line 770
    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 771
    .line 772
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 779
    .line 780
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->c:Landroid/app/Activity;

    .line 788
    .line 789
    invoke-virtual {p1, v0, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 790
    .line 791
    .line 792
    :try_start_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 793
    .line 794
    .line 795
    move-result-object p1

    .line 796
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 797
    .line 798
    .line 799
    move-result-object p1

    .line 800
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$e;

    .line 805
    .line 806
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 807
    .line 808
    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 809
    .line 810
    iget-object v5, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->e:Ljava/lang/String;

    .line 811
    .line 812
    invoke-direct {v1, v2, p1, v4, v5}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer$e;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 816
    .line 817
    .line 818
    goto :goto_6

    .line 819
    :catchall_1
    :try_start_a
    sget-object p1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 820
    .line 821
    const-string v0, "remove campaign failed"

    .line 822
    .line 823
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    :goto_6
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 827
    .line 828
    if-eqz p1, :cond_10

    .line 829
    .line 830
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 831
    .line 832
    .line 833
    move-result p1

    .line 834
    if-lez p1, :cond_10

    .line 835
    .line 836
    iget-object p1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 837
    .line 838
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 839
    .line 840
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 845
    .line 846
    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a(Lcom/mbridge/msdk/videocommon/setting/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 847
    .line 848
    .line 849
    goto :goto_8

    .line 850
    :cond_c
    const-string p1, "big template webviewLayout is null"

    .line 851
    .line 852
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->b(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    return-void

    .line 856
    :cond_d
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 857
    .line 858
    if-eqz v0, :cond_f

    .line 859
    .line 860
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    if-lez v0, :cond_f

    .line 865
    .line 866
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 867
    .line 868
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 873
    .line 874
    if-eqz v0, :cond_f

    .line 875
    .line 876
    if-nez p1, :cond_e

    .line 877
    .line 878
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 879
    .line 880
    .line 881
    move-result p1

    .line 882
    if-eqz p1, :cond_f

    .line 883
    .line 884
    :cond_e
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->x:Landroid/content/Context;

    .line 885
    .line 886
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Landroid/content/Context;)V

    .line 887
    .line 888
    .line 889
    return-void

    .line 890
    :cond_f
    const-string p1, "big template webview is null"

    .line 891
    .line 892
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->b(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 893
    .line 894
    .line 895
    goto :goto_8

    .line 896
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 897
    .line 898
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .line 900
    .line 901
    const-string v1, "onCreate exception "

    .line 902
    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object p1

    .line 913
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->b(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    :cond_10
    :goto_8
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->D:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->S:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v0, "omsdk"

    .line 14
    .line 15
    const-string v1, "btc onDestroy"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->S:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/AdSession;->finish()V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onDestroy()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "_"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/bt/component/a;->h(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->clearWebView()V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->J:Lcom/mbridge/msdk/video/bt/module/listener/b;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iput-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->J:Lcom/mbridge/msdk/video/bt/module/listener/b;

    .line 94
    .line 95
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    iput-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 100
    .line 101
    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->x:Landroid/content/Context;

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    iput-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->x:Landroid/content/Context;

    .line 106
    .line 107
    :cond_6
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 108
    .line 109
    if-eqz v0, :cond_9

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-lez v0, :cond_9

    .line 116
    .line 117
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_8

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 134
    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-eqz v3, :cond_7

    .line 142
    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    iget-object v4, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->e()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v1}, Lcom/mbridge/msdk/videocommon/a;->e(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_8
    invoke-static {}, Lcom/mbridge/msdk/video/dynview/energize/a;->a()Lcom/mbridge/msdk/video/dynview/energize/a;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/dynview/energize/a;->d()V

    .line 190
    .line 191
    .line 192
    :cond_9
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/bt/component/a;->a(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->C:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->K:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 249
    .line 250
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :goto_2
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :goto_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/mbridge/msdk/video/dynview/energize/a;->a()Lcom/mbridge/msdk/video/dynview/energize/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/dynview/energize/a;->b()V

    .line 36
    .line 37
    .line 38
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-lez v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroid/view/View;

    .line 77
    .line 78
    instance-of v2, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    check-cast v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/mbridge/msdk/video/dynview/energize/a;->a()Lcom/mbridge/msdk/video/dynview/energize/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/dynview/energize/a;->c()V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-lez v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroid/view/View;

    .line 82
    .line 83
    instance-of v2, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 84
    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    check-cast v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-static {}, Lcom/mbridge/msdk/video/dynview/energize/a;->a()Lcom/mbridge/msdk/video/dynview/energize/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/dynview/energize/a;->d()V

    .line 36
    .line 37
    .line 38
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-lez v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Landroid/view/View;

    .line 77
    .line 78
    instance-of v2, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 79
    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    check-cast v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    sget-object v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    return-void
.end method

.method public reactDeveloper(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "omsdk"

    .line 2
    .line 3
    const-string/jumbo v1, "type"

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 7
    .line 8
    if-eqz v2, :cond_e

    .line 9
    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_e

    .line 15
    .line 16
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const-string/jumbo v3, "unitId"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getUnitId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sget-object v4, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getPlacementId()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "data"

    .line 47
    .line 48
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    iget-object v6, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 60
    .line 61
    const/4 v8, 0x1

    .line 62
    if-ne p2, v8, :cond_1

    .line 63
    .line 64
    if-eqz v5, :cond_1

    .line 65
    .line 66
    const-string v9, "expired"

    .line 67
    .line 68
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    if-eqz v9, :cond_0

    .line 75
    .line 76
    invoke-virtual {v6, v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p2

    .line 81
    goto/16 :goto_8

    .line 82
    .line 83
    :cond_0
    invoke-virtual {v6, v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setSpareOfferFlag(I)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    invoke-virtual {p0, v6}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setCBT(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 87
    .line 88
    .line 89
    const/4 v9, 0x2

    .line 90
    const/4 v10, 0x0

    .line 91
    packed-switch p2, :pswitch_data_0

    .line 92
    .line 93
    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :pswitch_0
    if-eqz v5, :cond_3

    .line 97
    .line 98
    const-string p2, "convert"

    .line 99
    .line 100
    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-ne p2, v8, :cond_2

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    move v8, v7

    .line 108
    :goto_1
    const-string p2, "reward"

    .line 109
    .line 110
    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const-string v2, "extra"

    .line 115
    .line 116
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    if-nez v11, :cond_4

    .line 125
    .line 126
    iput-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->P:Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    move v8, v7

    .line 130
    move-object p2, v10

    .line 131
    :cond_4
    :goto_2
    const-string v2, "campaign"

    .line 132
    .line 133
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lorg/json/JSONObject;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {p2}, Lcom/mbridge/msdk/videocommon/entity/c;->a(Lorg/json/JSONObject;)Lcom/mbridge/msdk/videocommon/entity/c;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    if-nez p2, :cond_5

    .line 146
    .line 147
    iget-object p2, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->h:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 148
    .line 149
    :cond_5
    iget-object v5, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 150
    .line 151
    const/4 v11, 0x7

    .line 152
    invoke-interface {v5, v11, v4, v3}, Lcom/mbridge/msdk/video/bt/module/listener/a;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    :try_start_1
    new-instance v4, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 156
    .line 157
    invoke-direct {v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v4, v1, v5}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v5, "2000152"

    .line 172
    .line 173
    invoke-virtual {v1, v5, v4}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catch_1
    move-exception v1

    .line 178
    :try_start_2
    sget-boolean v4, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 179
    .line 180
    if-eqz v4, :cond_6

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    :cond_6
    :goto_3
    iget-boolean v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    .line 186
    .line 187
    if-eqz v1, :cond_8

    .line 188
    .line 189
    iget v1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->m:I

    .line 190
    .line 191
    sget v4, Lcom/mbridge/msdk/foundation/same/a;->H:I

    .line 192
    .line 193
    if-eq v1, v4, :cond_7

    .line 194
    .line 195
    sget v4, Lcom/mbridge/msdk/foundation/same/a;->I:I

    .line 196
    .line 197
    if-ne v1, v4, :cond_8

    .line 198
    .line 199
    :cond_7
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 200
    .line 201
    iget-boolean v4, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->N:Z

    .line 202
    .line 203
    iget v5, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->O:I

    .line 204
    .line 205
    invoke-interface {v1, v4, v5}, Lcom/mbridge/msdk/video/bt/module/listener/a;->a(ZI)V

    .line 206
    .line 207
    .line 208
    :cond_8
    if-nez v8, :cond_9

    .line 209
    .line 210
    invoke-virtual {p2, v7}, Lcom/mbridge/msdk/videocommon/entity/c;->a(I)V

    .line 211
    .line 212
    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v4, "bt videoEvents :"

    .line 219
    .line 220
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v4, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->T:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    .line 224
    .line 225
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->T:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 236
    .line 237
    if-eqz v1, :cond_9

    .line 238
    .line 239
    :try_start_3
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;->skipped()V

    .line 240
    .line 241
    .line 242
    iput-object v10, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->T:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :catch_2
    move-exception v1

    .line 246
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 254
    .line 255
    invoke-interface {v0, v8, p2}, Lcom/mbridge/msdk/video/bt/module/listener/a;->a(ZLcom/mbridge/msdk/videocommon/entity/c;)V

    .line 256
    .line 257
    .line 258
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 259
    .line 260
    const-string v1, "sendToServerRewardInfo"

    .line 261
    .line 262
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->k:Z

    .line 266
    .line 267
    if-nez v0, :cond_b

    .line 268
    .line 269
    if-eqz v8, :cond_b

    .line 270
    .line 271
    if-eqz v2, :cond_a

    .line 272
    .line 273
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->g:Ljava/lang/String;

    .line 274
    .line 275
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->P:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v2, p2, v3, v0, v1}, Lcom/mbridge/msdk/video/module/report/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_a
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->g:Ljava/lang/String;

    .line 282
    .line 283
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->P:Ljava/lang/String;

    .line 284
    .line 285
    invoke-static {v6, p2, v3, v0, v1}, Lcom/mbridge/msdk/video/module/report/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/entity/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :cond_b
    :goto_5
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    const-string v0, "2000134"

    .line 293
    .line 294
    invoke-virtual {p2, v0, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :pswitch_1
    const-string p2, "isAutoClick"

    .line 299
    .line 300
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 305
    .line 306
    invoke-interface {v0, p2, v4, v3}, Lcom/mbridge/msdk/video/bt/module/listener/a;->a(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 307
    .line 308
    .line 309
    goto :goto_7

    .line 310
    :pswitch_2
    :try_start_5
    new-instance p2, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 311
    .line 312
    invoke-direct {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p2, v1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    const-string v1, "2000147"

    .line 327
    .line 328
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 329
    .line 330
    invoke-virtual {v0, v1, v2, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 331
    .line 332
    .line 333
    goto :goto_6

    .line 334
    :catchall_0
    move-exception p2

    .line 335
    :try_start_6
    sget-object v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    :goto_6
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 345
    .line 346
    invoke-interface {p2, v4, v3}, Lcom/mbridge/msdk/video/bt/module/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 350
    .line 351
    const/4 v0, 0x6

    .line 352
    invoke-interface {p2, v0, v4, v3}, Lcom/mbridge/msdk/video/bt/module/listener/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    goto :goto_7

    .line 356
    :pswitch_3
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 357
    .line 358
    invoke-interface {p2, v4, v3}, Lcom/mbridge/msdk/video/bt/module/listener/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 362
    .line 363
    const/4 v0, 0x5

    .line 364
    invoke-interface {p2, v0, v4, v3}, Lcom/mbridge/msdk/video/bt/module/listener/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    goto :goto_7

    .line 368
    :pswitch_4
    if-eqz v5, :cond_c

    .line 369
    .line 370
    const-string p2, "error"

    .line 371
    .line 372
    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    :cond_c
    const-string p2, ""

    .line 377
    .line 378
    if-eqz v10, :cond_d

    .line 379
    .line 380
    const-string p2, "msg"

    .line 381
    .line 382
    invoke-virtual {v10, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    :cond_d
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 387
    .line 388
    invoke-interface {v0, p2}, Lcom/mbridge/msdk/video/bt/module/listener/a;->a(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 392
    .line 393
    const/4 v0, 0x4

    .line 394
    invoke-interface {p2, v0, v4, v3}, Lcom/mbridge/msdk/video/bt/module/listener/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    goto :goto_7

    .line 398
    :pswitch_5
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 399
    .line 400
    invoke-interface {p2}, Lcom/mbridge/msdk/video/bt/module/listener/a;->a()V

    .line 401
    .line 402
    .line 403
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 404
    .line 405
    invoke-interface {p2, v9, v4, v3}, Lcom/mbridge/msdk/video/bt/module/listener/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    :goto_7
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a(Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 409
    .line 410
    .line 411
    goto :goto_9

    .line 412
    :goto_8
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    sget-object p1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 420
    .line 421
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p2

    .line 425
    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_e
    const-string p2, "listener is null"

    .line 430
    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    :goto_9
    return-void

    .line 435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    sget-object v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "reportUrls:"

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_6

    .line 32
    .line 33
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    move v3, v0

    .line 40
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 41
    .line 42
    .line 43
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const-string v5, ""

    .line 45
    .line 46
    if-ge v3, v4, :cond_5

    .line 47
    .line 48
    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const-string/jumbo v6, "type"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const-string/jumbo v7, "url"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    const-string v8, "&tun="

    .line 67
    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/l0;->y()I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-static {v7, v8, v5}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    const-string v5, "report"

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v15

    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v5, 0x1

    .line 99
    if-nez v15, :cond_2

    .line 100
    .line 101
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    iget-object v7, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 110
    .line 111
    if-eqz v7, :cond_0

    .line 112
    .line 113
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 118
    .line 119
    :cond_0
    move-object v10, v4

    .line 120
    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    goto :goto_5

    .line 123
    :goto_1
    const-string v11, ""

    .line 124
    .line 125
    if-eqz v6, :cond_1

    .line 126
    .line 127
    move v14, v5

    .line 128
    goto :goto_2

    .line 129
    :cond_1
    move v14, v0

    .line 130
    :goto_2
    const/4 v13, 0x0

    .line 131
    invoke-static/range {v9 .. v14}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    iget-object v7, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 144
    .line 145
    if-eqz v7, :cond_3

    .line 146
    .line 147
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 152
    .line 153
    :cond_3
    move-object v10, v4

    .line 154
    const-string v11, ""

    .line 155
    .line 156
    if-eqz v6, :cond_4

    .line 157
    .line 158
    move v14, v5

    .line 159
    goto :goto_3

    .line 160
    :cond_4
    move v14, v0

    .line 161
    :goto_3
    const/4 v13, 0x0

    .line 162
    invoke-static/range {v9 .. v15}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V

    .line 163
    .line 164
    .line 165
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_5
    move-object/from16 v0, p1

    .line 169
    .line 170
    invoke-virtual {v1, v0, v5}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    .line 173
    goto :goto_6

    .line 174
    :goto_5
    sget-object v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 175
    .line 176
    const-string v3, "reportUrls"

    .line 177
    .line 178
    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .line 180
    .line 181
    :cond_6
    :goto_6
    return-void
.end method

.method public setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->U:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    .line 2
    .line 3
    return-void
.end method

.method public setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/AdSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->S:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 2
    .line 3
    return-void
.end method

.method public setBTContainerCallback(Lcom/mbridge/msdk/video/bt/module/listener/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->G:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 2
    .line 3
    return-void
.end method

.method public setCBT(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSpareOfferFlag()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->f:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mbridge/msdk/videocommon/setting/c;->A()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCbt(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public setCampaignDownLoadTasks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/videocommon/download/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->F:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setCampaigns(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->E:Ljava/util/List;

    .line 2
    .line 3
    :try_start_0
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->R:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 44
    .line 45
    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->R:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 50
    .line 51
    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->R:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->R:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->R:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_1
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_2
    return-void
.end method

.method public setChoiceOneCallback(Lcom/mbridge/msdk/video/dynview/listener/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->Q:Lcom/mbridge/msdk/video/dynview/listener/d;

    .line 2
    .line 3
    return-void
.end method

.method public setDeveloperExtraData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->P:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJSFactory(Lcom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->q:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 2
    .line 3
    return-void
.end method

.method public setNotchPadding(IIIII)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move/from16 v8, p3

    .line 6
    .line 7
    move/from16 v9, p4

    .line 8
    .line 9
    move/from16 v10, p5

    .line 10
    .line 11
    :try_start_0
    invoke-static/range {p1 .. p5}, Lcom/mbridge/msdk/foundation/tools/c0;->a(IIIII)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v11

    .line 15
    sget-object v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2, v11}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    const/4 v12, 0x0

    .line 23
    const-string v13, "oncutoutfetched"

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    instance-of v2, v2, Lcom/mbridge/msdk/video/signal/impl/k;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    iget-object v2, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/mbridge/msdk/video/signal/impl/k;

    .line 48
    .line 49
    invoke-virtual {v2, v11}, Lcom/mbridge/msdk/video/signal/impl/k;->a(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->v:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 57
    .line 58
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v4, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v2, v3, v13, v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :cond_0
    :goto_0
    invoke-direct {v1, v0, v9, v8, v10}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(IIII)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    move/from16 v3, p1

    .line 81
    .line 82
    move/from16 v4, p2

    .line 83
    .line 84
    move/from16 v5, p3

    .line 85
    .line 86
    move/from16 v6, p4

    .line 87
    .line 88
    move/from16 v7, p5

    .line 89
    .line 90
    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/video/bt/component/a;->a(IIIII)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iget-object v3, v1, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->d:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v4, v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->L:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v2, v3, v4}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-lez v3, :cond_4

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    move-object v15, v2

    .line 132
    check-cast v15, Landroid/view/View;

    .line 133
    .line 134
    instance-of v2, v15, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 135
    .line 136
    if-eqz v2, :cond_2

    .line 137
    .line 138
    move-object v2, v15

    .line 139
    check-cast v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 140
    .line 141
    invoke-virtual {v2, v0, v8, v9, v10}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->setNotchPadding(IIII)V

    .line 142
    .line 143
    .line 144
    :cond_2
    instance-of v2, v15, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 145
    .line 146
    if-eqz v2, :cond_3

    .line 147
    .line 148
    move-object v2, v15

    .line 149
    check-cast v2, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 150
    .line 151
    move/from16 v3, p1

    .line 152
    .line 153
    move/from16 v4, p2

    .line 154
    .line 155
    move/from16 v5, p3

    .line 156
    .line 157
    move/from16 v6, p4

    .line 158
    .line 159
    move/from16 v7, p5

    .line 160
    .line 161
    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setNotchPadding(IIIII)V

    .line 162
    .line 163
    .line 164
    :cond_3
    instance-of v2, v15, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 165
    .line 166
    if-eqz v2, :cond_1

    .line 167
    .line 168
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_1

    .line 173
    .line 174
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-static {v3, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v2, v15, v13, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :goto_2
    sget-object v2, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->V:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    return-void
.end method

.method public setShowRewardVideoListener(Lcom/mbridge/msdk/video/bt/module/orglistener/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->H:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->T:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    .line 2
    .line 3
    return-void
.end method
