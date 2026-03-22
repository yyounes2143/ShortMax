.class public Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;
.super Lcom/mbridge/msdk/video/signal/activity/AbstractJSActivity;
.source "MBRewardVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$f;,
        Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$e;
    }
.end annotation


# static fields
.field public static INTENT_EXTRADATA:Ljava/lang/String; = "extraData"

.field public static INTENT_ISBID:Ljava/lang/String; = "isBid"

.field public static INTENT_ISBIG_OFFER:Ljava/lang/String; = "isBigOffer"

.field public static INTENT_ISIV:Ljava/lang/String; = "isIV"

.field public static INTENT_IVREWARD_MODETYPE:Ljava/lang/String; = "ivRewardMode"

.field public static INTENT_IVREWARD_VALUE:Ljava/lang/String; = "ivRewardValue"

.field public static INTENT_IVREWARD_VALUETYPE:Ljava/lang/String; = "ivRewardValueType"

.field public static INTENT_LOCAL_REQUEST_ID:Ljava/lang/String; = "lRid"

.field public static INTENT_MUTE:Ljava/lang/String; = "mute"

.field public static INTENT_REWARD:Ljava/lang/String; = "reward"

.field public static INTENT_UNITID:Ljava/lang/String; = "unitId"

.field public static INTENT_USERID:Ljava/lang/String; = "userId"

.field public static SAVE_STATE_KEY_REPORT:Ljava/lang/String; = "hasRelease"


# instance fields
.field private A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

.field private B:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private C:Lcom/mbridge/msdk/video/bt/module/listener/a;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

.field private P:Z

.field private Q:Z

.field private R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

.field private S:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

.field private T:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

.field private U:J

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/Boolean;

.field private X:I

.field private Y:Z

.field private Z:Z

.field private a0:Lcom/mbridge/msdk/video/dynview/listener/a;

.field private b0:Lcom/mbridge/msdk/video/dynview/listener/d;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/mbridge/msdk/videocommon/entity/c;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

.field private s:Lcom/mbridge/msdk/videocommon/setting/c;

.field private t:Z

.field private u:Z

.field private v:Lcom/mbridge/msdk/videocommon/download/a;

.field private w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/videocommon/download/a;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/signal/activity/AbstractJSActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->q:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->t:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Z

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->G:I

    .line 22
    .line 23
    iput v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->H:I

    .line 24
    .line 25
    iput v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->I:I

    .line 26
    .line 27
    iput v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->J:I

    .line 28
    .line 29
    iput v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->K:I

    .line 30
    .line 31
    iput v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->L:I

    .line 32
    .line 33
    iput v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->M:I

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->P:Z

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->S:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->T:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    .line 43
    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    iput-wide v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->U:J

    .line 47
    .line 48
    const-string v2, ""

    .line 49
    .line 50
    iput-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->W:Ljava/lang/Boolean;

    .line 53
    .line 54
    iput v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->X:I

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->Y:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->Z:Z

    .line 59
    .line 60
    new-instance v0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$a;-><init>(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a0:Lcom/mbridge/msdk/video/dynview/listener/a;

    .line 66
    .line 67
    new-instance v0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$b;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$b;-><init>(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b0:Lcom/mbridge/msdk/video/dynview/listener/d;

    .line 73
    .line 74
    return-void
.end method

.method private a(II)I
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    if-nez v0, :cond_0

    return p1

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 11
    :goto_0
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 12
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    .line 13
    iget-object v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCompleteTime()I

    move-result v3

    .line 14
    :cond_2
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    move-result v4

    add-int/2addr v2, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_7

    const/16 p2, 0x2d

    if-nez p1, :cond_5

    if-lt v2, p2, :cond_6

    move p1, p2

    goto :goto_2

    :cond_5
    if-le v2, p1, :cond_6

    if-le p1, p2, :cond_b

    return p2

    :cond_6
    move p1, v2

    goto :goto_2

    :cond_7
    move p1, v0

    move v2, p1

    :goto_1
    add-int/lit8 v4, p2, -0x1

    if-ge p1, v4, :cond_9

    .line 15
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 16
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    move-result v4

    add-int/2addr v2, v4

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_9
    if-le v3, v2, :cond_a

    sub-int p1, v3, v2

    goto :goto_2

    :cond_a
    move p1, v0

    :cond_b
    :goto_2
    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;II)I
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/a$a;->b()Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Ljava/util/List;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    return-object p0
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;)V

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 21
    iget-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->Q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 22
    :try_start_0
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Z

    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 24
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 26
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_2
    :goto_0
    const-string v1, ""

    if-eqz p1, :cond_3

    .line 28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_3

    .line 30
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object v1

    .line 31
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 32
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->O:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 33
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->O:Lcom/mbridge/msdk/foundation/same/report/metrics/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "2000129"

    if-nez v0, :cond_6

    .line 34
    :try_start_1
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->O:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 35
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 36
    const-string/jumbo v2, "unit_id"

    iget-object v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    const-string v2, "hb"

    iget-boolean v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    const-string v2, "adtp"

    iget-boolean v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x11f

    goto :goto_1

    :cond_5
    const/16 v3, 0x5e

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v2, "lrid"

    iget-object v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    const-string v2, "his_reason"

    const-string/jumbo v3, "show campaign is null"

    invoke-virtual {v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->O:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-virtual {v2, v1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 42
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->O:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    :cond_7
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->Q:Z

    .line 44
    invoke-static {}, Lcom/mbridge/msdk/reward/report/metrics/a;->a()Lcom/mbridge/msdk/reward/report/metrics/a;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->O:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/reward/report/metrics/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 45
    :goto_2
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;Z)Z
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->H:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->H:I

    return v0
.end method

.method private b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isActiveOm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    .line 9
    invoke-static/range {v1 .. v8}, Lcom/mbridge/msdk/omsdk/b;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    if-eqz p1, :cond_0

    .line 10
    invoke-static {p1}, Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/AdSession;)Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->T:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    .line 11
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    invoke-static {p1}, Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;->createMediaEvents(Lcom/iab/omid/library/mmadbridge/adsession/AdSession;)Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->S:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBRewardVideoActivity"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j()V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 23
    const-string v0, "MBRewardVideoActivity"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/util/List;)V

    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->O:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-interface {v0, v1, p1}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->finish()V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    const-string v0, "no available campaign"

    if-nez p1, :cond_0

    .line 13
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 15
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v1

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->N:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 19
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k()V

    goto :goto_2

    .line 20
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_4

    .line 21
    iget v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->H:I

    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getVideoLength()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->H:I

    goto :goto_1

    .line 22
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->e(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lcom/mbridge/msdk/video/bt/module/MBTempContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    return-object p0
.end method

.method private c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/videocommon/download/a;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Z

    .line 8
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j()V

    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-eqz v0, :cond_2

    .line 10
    iget v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->M:I

    iget v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->I:I

    iget v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->K:I

    iget v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->J:I

    iget v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->L:I

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setNotchPadding(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 11
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBRewardVideoActivity"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string p1, "more offer to one offer exception"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->M:I

    return p0
.end method

.method private d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Lcom/mbridge/msdk/videocommon/setting/c;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/mbridge/msdk/reward/player/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/videocommon/setting/c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->I:I

    return p0
.end method

.method private e()V
    .locals 4

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x11f

    goto :goto_0

    :cond_0
    const/16 v3, 0x5e

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v2, Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/mbridge/msdk/foundation/tools/u0;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Landroid/util/DisplayMetrics;)Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    if-eqz v0, :cond_1

    .line 8
    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/iab/omid/library/mmadbridge/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private e(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoCompleteTime()I

    move-result v0

    iget v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->G:I

    invoke-direct {p0, v0, v1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(II)I

    move-result v0

    .line 11
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignIsFiltered(Z)V

    .line 13
    iput v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->G:I

    .line 14
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoCompleteTime(I)V

    .line 15
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->G:I

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setShowIndex(I)V

    .line 16
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setShowType(I)V

    .line 17
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "campaign is less"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->K:I

    return p0
.end method

.method private f()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/mbridge/msdk/video/bt/module/orglistener/b;

    if-eqz v1, :cond_2

    .line 3
    :try_start_0
    check-cast v0, Lcom/mbridge/msdk/video/bt/module/orglistener/b;

    .line 4
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/orglistener/b;->d()Ljava/lang/Boolean;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/orglistener/b;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->W:Ljava/lang/Boolean;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->W:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBRewardVideoActivity"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic g(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->J:I

    return p0
.end method

.method private g()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->W:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->O:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    const-string/jumbo v2, "show fail : unexpected destroy"

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBRewardVideoActivity"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method static synthetic h(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->L:I

    return p0
.end method

.method private h()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 4
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBRewardVideoActivity"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private i()Lcom/mbridge/msdk/video/bt/module/listener/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->C:Lcom/mbridge/msdk/video/bt/module/listener/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$c;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$c;-><init>(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V

    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->C:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->C:Lcom/mbridge/msdk/video/bt/module/listener/a;

    return-object v0
.end method

.method static synthetic i(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lcom/mbridge/msdk/video/bt/module/orglistener/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    return-object p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->O:Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    return-object p0
.end method

.method private j()V
    .locals 6

    .line 2
    const-string v0, "mbridge_temp_container"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->findID(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/h0;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-string v1, "no id mbridge_bt_container in mbridge_more_offer_activity layout"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    if-nez v0, :cond_1

    .line 6
    const-string v0, "env error"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Lcom/mbridge/msdk/video/dynview/ui/b;->a(Landroid/view/View;J)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v0, -0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->changeHalfScreenPadding(I)V

    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setActivity(Landroid/app/Activity;)V

    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-boolean v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l:Z

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setBidCampaign(Z)V

    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-boolean v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Z

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setBigOffer(Z)V

    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setUnitId(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 16
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getDynamicTempCode()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 17
    const-string v0, "mbridge_reward_root_container"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const/high16 v2, -0x1000000

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    iget v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->H:I

    invoke-virtual {v0, v2, v4}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setCampOrderViewData(Ljava/util/List;I)V

    .line 21
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a0:Lcom/mbridge/msdk/video/dynview/listener/a;

    iget v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->G:I

    invoke-virtual {v0, v2, v4}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setCamPlayOrderCallback(Lcom/mbridge/msdk/video/dynview/listener/a;I)V

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setCampaignDownLoadTask(Lcom/mbridge/msdk/videocommon/download/a;)V

    .line 23
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-boolean v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setIV(Z)V

    .line 24
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0, v1, v1, v1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setIVRewardEnable(III)V

    goto :goto_1

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->m:I

    iget v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->n:I

    iget v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->o:I

    invoke-virtual {v0, v2, v4, v5}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setIVRewardEnable(III)V

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j:I

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setMute(I)V

    .line 28
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardPlus()Lcom/mbridge/msdk/foundation/entity/RewardPlus;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardPlus()Lcom/mbridge/msdk/foundation/entity/RewardPlus;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 29
    :cond_7
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->getAmount()I

    move-result v1

    if-lez v1, :cond_9

    .line 30
    new-instance v1, Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->getAmount()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/mbridge/msdk/videocommon/entity/c;-><init>(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/entity/c;->a()I

    move-result v0

    if-gez v0, :cond_8

    .line 32
    invoke-virtual {v1, v3}, Lcom/mbridge/msdk/videocommon/entity/c;->a(I)V

    .line 33
    :cond_8
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setReward(Lcom/mbridge/msdk/videocommon/entity/c;)V

    .line 35
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setRewardUnitSetting(Lcom/mbridge/msdk/videocommon/setting/c;)V

    .line 36
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setPlacementId(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setUserId(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setShowRewardListener(Lcom/mbridge/msdk/video/bt/module/orglistener/h;)V

    .line 39
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setDeveloperExtraData(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->init(Landroid/content/Context;)V

    .line 41
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/AdSession;)V

    .line 42
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->T:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;)V

    .line 43
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->S:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;)V

    .line 44
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onCreate()V

    .line 45
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 46
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_a

    .line 47
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_a
    return-void
.end method

.method static synthetic k(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method private k()V
    .locals 5

    .line 2
    const-string v0, "mbridge_bt_container"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->findID(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/h0;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    const-string v1, "no mbridge_webview_framelayout in mbridge_more_offer_activity layout"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    if-nez v0, :cond_1

    .line 6
    const-string v0, "env error"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i()Lcom/mbridge/msdk/video/bt/module/listener/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->C:Lcom/mbridge/msdk/video/bt/module/listener/a;

    .line 9
    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setBTContainerCallback(Lcom/mbridge/msdk/video/bt/module/listener/a;)V

    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setShowRewardVideoListener(Lcom/mbridge/msdk/video/bt/module/orglistener/h;)V

    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b0:Lcom/mbridge/msdk/video/dynview/listener/d;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setChoiceOneCallback(Lcom/mbridge/msdk/video/dynview/listener/d;)V

    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setCampaigns(Ljava/util/List;)V

    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setCampaignDownLoadTasks(Ljava/util/List;)V

    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setRewardUnitSetting(Lcom/mbridge/msdk/videocommon/setting/c;)V

    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setUnitId(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setPlacementId(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setUserId(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setActivity(Landroid/app/Activity;)V

    .line 19
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardPlus()Lcom/mbridge/msdk/foundation/entity/RewardPlus;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardPlus()Lcom/mbridge/msdk/foundation/entity/RewardPlus;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20
    :cond_3
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->getAmount()I

    move-result v2

    if-lez v2, :cond_5

    .line 21
    new-instance v2, Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/RewardPlus;->getAmount()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/mbridge/msdk/videocommon/entity/c;-><init>(Ljava/lang/String;I)V

    .line 22
    invoke-virtual {v2}, Lcom/mbridge/msdk/videocommon/entity/c;->a()I

    move-result v0

    if-gez v0, :cond_4

    const/4 v0, 0x1

    .line 23
    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/videocommon/entity/c;->a(I)V

    .line 24
    :cond_4
    iput-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:Lcom/mbridge/msdk/videocommon/entity/c;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setReward(Lcom/mbridge/msdk/videocommon/entity/c;)V

    .line 26
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->m:I

    iget v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->n:I

    iget v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->o:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setIVRewardEnable(III)V

    .line 27
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-boolean v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setIV(Z)V

    .line 28
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j:I

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->setMute(I)V

    .line 29
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->jsFactory:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    check-cast v2, Lcom/mbridge/msdk/video/signal/factory/b;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setJSFactory(Lcom/mbridge/msdk/video/signal/factory/b;)V

    .line 30
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setDeveloperExtraData(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->init(Landroid/content/Context;)V

    .line 32
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/AdSession;)V

    .line 33
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->S:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;)V

    .line 34
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->T:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;)V

    .line 35
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    iget-boolean v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->P:Z

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onCreate(Z)V

    .line 36
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 38
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->d(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_6
    return-void
.end method

.method static synthetic l(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->G:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->G:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->G:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic n(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public changeHalfScreenPadding(I)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdSpaceT()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/high16 v2, -0x67000000

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    const/16 v2, 0x11

    .line 34
    .line 35
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 36
    .line 37
    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->b()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const v3, 0x3f19999a    # 0.6f

    .line 48
    .line 49
    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    if-ne p1, v1, :cond_0

    .line 53
    .line 54
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/u0;->f(Landroid/content/Context;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    int-to-float p1, p1

    .line 59
    mul-float/2addr p1, v3

    .line 60
    float-to-int p1, p1

    .line 61
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/u0;->g(Landroid/content/Context;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_4

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/u0;->f(Landroid/content/Context;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    int-to-float p1, p1

    .line 73
    mul-float/2addr p1, v3

    .line 74
    float-to-int p1, p1

    .line 75
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/u0;->g(Landroid/content/Context;)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->b()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-ne p1, v1, :cond_2

    .line 91
    .line 92
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/u0;->f(Landroid/content/Context;)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    int-to-float p1, p1

    .line 97
    mul-float/2addr p1, v3

    .line 98
    float-to-int p1, p1

    .line 99
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/u0;->g(Landroid/content/Context;)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    :goto_0
    int-to-float v1, v1

    .line 104
    mul-float/2addr v1, v3

    .line 105
    :goto_1
    float-to-int v1, v1

    .line 106
    goto :goto_3

    .line 107
    :cond_2
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/u0;->f(Landroid/content/Context;)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    int-to-float p1, p1

    .line 112
    mul-float/2addr p1, v3

    .line 113
    float-to-int p1, p1

    .line 114
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/u0;->g(Landroid/content/Context;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    :goto_2
    int-to-float v1, v1

    .line 119
    const v2, 0x3f333333    # 0.7f

    .line 120
    .line 121
    .line 122
    mul-float/2addr v1, v2

    .line 123
    goto :goto_1

    .line 124
    :goto_3
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 125
    .line 126
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 127
    .line 128
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_5

    .line 134
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string v0, "MBRewardVideoActivity"

    .line 139
    .line 140
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    :goto_5
    return-void
.end method

.method public findID(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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

.method public finish()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->Y:Z

    .line 3
    .line 4
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/a;->b(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onDestroy()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 21
    .line 22
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string v0, "omsdk"

    .line 36
    .line 37
    const-string v2, "mbrewardvideoac finish"

    .line 38
    .line 39
    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/AdSession;->removeAllFriendlyObstructions()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/AdSession;->finish()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onDestroy()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 62
    .line 63
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->Z:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onBackPressed()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onBackPressed()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onBackPressed()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->changeHalfScreenPadding(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    const-string v0, "_"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "anim"

    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/mbridge/msdk/activity/MBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    sput-boolean v3, Lcom/mbridge/msdk/MBridgeConstans;->isRewardActivityShowing:Z

    .line 12
    .line 13
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4, p0}, Lcom/mbridge/msdk/foundation/controller/a;->a(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iput-wide v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->U:J

    .line 25
    .line 26
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    const-string v4, "onCreate"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, "_onCreate"

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    :goto_0
    iput-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 57
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    sget-object v5, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_UNITID:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iput-object v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 69
    .line 70
    sget-object v5, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    iput-object v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g:Ljava/lang/String;

    .line 77
    .line 78
    sget-object v5, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_REWARD:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v5}, Lcom/mbridge/msdk/videocommon/entity/c;->a(Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/entity/c;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iput-object v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 89
    .line 90
    sget-object v5, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_USERID:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iput-object v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->h:Ljava/lang/String;

    .line 97
    .line 98
    sget-object v5, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_MUTE:Ljava/lang/String;

    .line 99
    .line 100
    const/4 v6, 0x2

    .line 101
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    iput v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j:I

    .line 106
    .line 107
    sget-object v5, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISIV:Ljava/lang/String;

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    iput-boolean v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    .line 115
    .line 116
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    iget-boolean v7, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    .line 121
    .line 122
    const/16 v8, 0x5e

    .line 123
    .line 124
    const/16 v9, 0x11f

    .line 125
    .line 126
    if-eqz v7, :cond_1

    .line 127
    .line 128
    move v7, v9

    .line 129
    goto :goto_1

    .line 130
    :cond_1
    move v7, v8

    .line 131
    :goto_1
    invoke-virtual {v5, v7}, Lcom/mbridge/msdk/foundation/controller/a;->b(I)V

    .line 132
    .line 133
    .line 134
    sget-object v5, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISBID:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    iput-boolean v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l:Z

    .line 141
    .line 142
    sget-object v5, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_EXTRADATA:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    iput-object v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->E:Ljava/lang/String;

    .line 149
    .line 150
    const-string v5, "is_refactor"

    .line 151
    .line 152
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    iput-boolean v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->P:Z

    .line 157
    .line 158
    if-eqz v5, :cond_2

    .line 159
    .line 160
    sget-object v5, Lcom/mbridge/msdk/newreward/function/common/MBridgeGlobalCommon;->showRewardListenerMap:Ljava/util/Map;

    .line 161
    .line 162
    iget-object v7, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 163
    .line 164
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    check-cast v5, Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 169
    .line 170
    iput-object v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catchall_0
    move-exception p1

    .line 174
    goto/16 :goto_8

    .line 175
    .line 176
    :cond_2
    sget-object v5, Lcom/mbridge/msdk/reward/controller/a;->f0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 177
    .line 178
    iget-object v7, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    check-cast v5, Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 185
    .line 186
    iput-object v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 187
    .line 188
    :goto_2
    iget-boolean v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    .line 189
    .line 190
    if-eqz v5, :cond_3

    .line 191
    .line 192
    sget-object v5, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_MODETYPE:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    iput v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->m:I

    .line 199
    .line 200
    sget-object v5, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_VALUETYPE:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    iput v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->n:I

    .line 207
    .line 208
    sget-object v5, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_IVREWARD_VALUE:Ljava/lang/String;

    .line 209
    .line 210
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    iput v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->o:I

    .line 215
    .line 216
    :cond_3
    sget-object v5, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->INTENT_ISBIG_OFFER:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    iput-boolean v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Z

    .line 223
    .line 224
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    iget-object v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/videocommon/download/b;->a(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    iput-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    .line 235
    .line 236
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    iget-object v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/videocommon/download/b;->b(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    iput-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 247
    .line 248
    const-string v4, "mbridge_more_offer_activity"

    .line 249
    .line 250
    invoke-virtual {p0, v4}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->findLayout(Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/h0;->a(I)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_4

    .line 259
    .line 260
    const-string p1, "no mbridge_more_offer_activity layout"

    .line 261
    .line 262
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :cond_4
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 267
    .line 268
    .line 269
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const-string v5, "data empty error"

    .line 276
    .line 277
    if-eqz v4, :cond_5

    .line 278
    .line 279
    :try_start_1
    invoke-direct {p0, v5}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :cond_5
    new-instance v4, Lcom/mbridge/msdk/video/signal/factory/b;

    .line 284
    .line 285
    invoke-direct {v4, p0}, Lcom/mbridge/msdk/video/signal/factory/b;-><init>(Landroid/app/Activity;)V

    .line 286
    .line 287
    .line 288
    iput-object v4, p0, Lcom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->jsFactory:Lcom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 289
    .line 290
    invoke-virtual {p0, v4}, Lcom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->registerJsFactory(Lcom/mbridge/msdk/video/signal/factory/IJSFactory;)V

    .line 291
    .line 292
    .line 293
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 294
    .line 295
    if-nez v4, :cond_6

    .line 296
    .line 297
    const-string/jumbo p1, "showRewardListener is null"

    .line 298
    .line 299
    .line 300
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    iput v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->X:I

    .line 309
    .line 310
    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/RewardUnitCacheManager;->getInstance()Lcom/mbridge/msdk/reward/adapter/RewardUnitCacheManager;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    iget-object v7, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g:Ljava/lang/String;

    .line 315
    .line 316
    iget-object v10, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 317
    .line 318
    invoke-virtual {v4, v7, v10}, Lcom/mbridge/msdk/reward/adapter/RewardUnitCacheManager;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/setting/c;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    iput-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 323
    .line 324
    if-nez v4, :cond_7

    .line 325
    .line 326
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 331
    .line 332
    .line 333
    move-result-object v7

    .line 334
    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    iget-object v10, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v4, v7, v10}, Lcom/mbridge/msdk/videocommon/setting/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/videocommon/setting/c;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    iput-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 345
    .line 346
    if-nez v4, :cond_7

    .line 347
    .line 348
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    iget-object v10, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 361
    .line 362
    iget-boolean v11, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    .line 363
    .line 364
    invoke-virtual {v4, v7, v10, v11}, Lcom/mbridge/msdk/videocommon/setting/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mbridge/msdk/videocommon/setting/c;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    iput-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 369
    .line 370
    :cond_7
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 371
    .line 372
    if-eqz v4, :cond_8

    .line 373
    .line 374
    iget-object v7, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 375
    .line 376
    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/setting/c;->d()I

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    invoke-virtual {v7, v4}, Lcom/mbridge/msdk/videocommon/entity/c;->a(I)V

    .line 381
    .line 382
    .line 383
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 384
    .line 385
    iget-object v7, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->s:Lcom/mbridge/msdk/videocommon/setting/c;

    .line 386
    .line 387
    invoke-virtual {v7}, Lcom/mbridge/msdk/videocommon/setting/c;->s()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    invoke-virtual {v4, v7}, Lcom/mbridge/msdk/videocommon/entity/c;->b(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    :cond_8
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 395
    .line 396
    if-eqz v4, :cond_9

    .line 397
    .line 398
    invoke-virtual {v4}, Lcom/mbridge/msdk/videocommon/entity/c;->a()I

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    if-gtz v4, :cond_9

    .line 403
    .line 404
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 405
    .line 406
    invoke-virtual {v4, v3}, Lcom/mbridge/msdk/videocommon/entity/c;->a(I)V

    .line 407
    .line 408
    .line 409
    :cond_9
    const-string v4, "mbridge_reward_activity_open"

    .line 410
    .line 411
    invoke-static {p0, v4, v2}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    const-string v7, "mbridge_reward_activity_stay"

    .line 416
    .line 417
    invoke-static {p0, v7, v2}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/h0;->a(I)Z

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    if-eqz v7, :cond_a

    .line 426
    .line 427
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/h0;->a(I)Z

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    if-eqz v7, :cond_a

    .line 432
    .line 433
    invoke-virtual {p0, v4, v2}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    .line 435
    .line 436
    :cond_a
    if-eqz p1, :cond_b

    .line 437
    .line 438
    :try_start_2
    sget-object v2, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->SAVE_STATE_KEY_REPORT:Ljava/lang/String;

    .line 439
    .line 440
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    .line 446
    goto :goto_3

    .line 447
    :catch_0
    move-exception p1

    .line 448
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 449
    .line 450
    .line 451
    :cond_b
    :goto_3
    const-string p1, "DynamicViewCampaignResourceDownloader"

    .line 452
    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .line 457
    .line 458
    const-string/jumbo v4, "\u8fdb\u5165 show\uff0c\u5927\u6a21\u677f "

    .line 459
    .line 460
    .line 461
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    iget-boolean v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Z

    .line 465
    .line 466
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    invoke-static {p1, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 477
    .line 478
    const-string v2, "env is exception"

    .line 479
    .line 480
    const/4 v4, 0x0

    .line 481
    if-nez p1, :cond_12

    .line 482
    .line 483
    :try_start_4
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    .line 484
    .line 485
    if-eqz p1, :cond_c

    .line 486
    .line 487
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 488
    .line 489
    .line 490
    move-result p1

    .line 491
    if-lez p1, :cond_c

    .line 492
    .line 493
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    .line 494
    .line 495
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    check-cast p1, Lcom/mbridge/msdk/videocommon/download/a;

    .line 500
    .line 501
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 502
    .line 503
    :cond_c
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 504
    .line 505
    if-eqz p1, :cond_d

    .line 506
    .line 507
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 512
    .line 513
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 514
    .line 515
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/videocommon/download/a;->b(Z)V

    .line 516
    .line 517
    .line 518
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 519
    .line 520
    invoke-virtual {p1, v6}, Lcom/mbridge/msdk/videocommon/download/a;->d(Z)V

    .line 521
    .line 522
    .line 523
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 524
    .line 525
    if-eqz p1, :cond_d

    .line 526
    .line 527
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->N:Ljava/lang/String;

    .line 532
    .line 533
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 534
    .line 535
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setShowIndex(I)V

    .line 536
    .line 537
    .line 538
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 539
    .line 540
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setShowType(I)V

    .line 541
    .line 542
    .line 543
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 544
    .line 545
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEcppv()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    sput-object p1, Lcom/mbridge/msdk/reward/controller/a;->b0:Ljava/lang/String;

    .line 550
    .line 551
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 556
    .line 557
    .line 558
    move-result-object p1

    .line 559
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 560
    .line 561
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 566
    .line 567
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/click/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 572
    .line 573
    .line 574
    :cond_d
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 575
    .line 576
    if-eqz p1, :cond_e

    .line 577
    .line 578
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpReportType()I

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    invoke-static {p1, p0, v4, v0}, Lcom/mbridge/msdk/foundation/tools/g;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Landroid/view/View;I)Z

    .line 583
    .line 584
    .line 585
    move-result p1

    .line 586
    if-nez p1, :cond_e

    .line 587
    .line 588
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    return-void

    .line 592
    :cond_e
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 593
    .line 594
    if-eqz p1, :cond_11

    .line 595
    .line 596
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 597
    .line 598
    if-eqz p1, :cond_11

    .line 599
    .line 600
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 601
    .line 602
    if-nez p1, :cond_f

    .line 603
    .line 604
    goto :goto_4

    .line 605
    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    .line 606
    .line 607
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .line 609
    .line 610
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 611
    .line 612
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/util/List;)V

    .line 616
    .line 617
    .line 618
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 619
    .line 620
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 621
    .line 622
    .line 623
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j()V

    .line 624
    .line 625
    .line 626
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 627
    .line 628
    .line 629
    move-result p1

    .line 630
    if-nez p1, :cond_10

    .line 631
    .line 632
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->e()V

    .line 633
    .line 634
    .line 635
    :cond_10
    return-void

    .line 636
    :cond_11
    :goto_4
    invoke-direct {p0, v5}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    return-void

    .line 640
    :cond_12
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 641
    .line 642
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/util/List;)V

    .line 643
    .line 644
    .line 645
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->D:Ljava/lang/String;

    .line 646
    .line 647
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 648
    .line 649
    if-eqz p1, :cond_14

    .line 650
    .line 651
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 652
    .line 653
    .line 654
    move-result p1

    .line 655
    if-lez p1, :cond_14

    .line 656
    .line 657
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 658
    .line 659
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object p1

    .line 663
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 664
    .line 665
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 666
    .line 667
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getImpReportType()I

    .line 668
    .line 669
    .line 670
    move-result v7

    .line 671
    invoke-static {v1, p0, v4, v7}, Lcom/mbridge/msdk/foundation/tools/g;->a(Ljava/util/List;Landroid/content/Context;Landroid/view/View;I)Z

    .line 672
    .line 673
    .line 674
    move-result v1

    .line 675
    if-nez v1, :cond_13

    .line 676
    .line 677
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    return-void

    .line 681
    :cond_13
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    iput-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->D:Ljava/lang/String;

    .line 693
    .line 694
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v2

    .line 698
    iput-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->N:Ljava/lang/String;

    .line 699
    .line 700
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEcppv()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    sput-object v2, Lcom/mbridge/msdk/reward/controller/a;->b0:Ljava/lang/String;

    .line 705
    .line 706
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    .line 715
    .line 716
    .line 717
    move-result v4

    .line 718
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object p1

    .line 722
    invoke-static {v2, v4, p1}, Lcom/mbridge/msdk/click/c;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 723
    .line 724
    .line 725
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 726
    .line 727
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    .line 729
    .line 730
    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 731
    .line 732
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->D:Ljava/lang/String;

    .line 739
    .line 740
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object p1

    .line 753
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/lang/String;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 754
    .line 755
    .line 756
    move-result-object p1

    .line 757
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->B:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 758
    .line 759
    if-nez p1, :cond_20

    .line 760
    .line 761
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 762
    .line 763
    if-nez p1, :cond_15

    .line 764
    .line 765
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    .line 766
    .line 767
    if-eqz p1, :cond_15

    .line 768
    .line 769
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 770
    .line 771
    .line 772
    move-result p1

    .line 773
    if-lez p1, :cond_15

    .line 774
    .line 775
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    .line 776
    .line 777
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object p1

    .line 781
    check-cast p1, Lcom/mbridge/msdk/videocommon/download/a;

    .line 782
    .line 783
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 784
    .line 785
    :cond_15
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 786
    .line 787
    if-nez p1, :cond_17

    .line 788
    .line 789
    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    .line 790
    .line 791
    .line 792
    move-result-object p1

    .line 793
    iget-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k:Z

    .line 794
    .line 795
    if-eqz v0, :cond_16

    .line 796
    .line 797
    move v8, v9

    .line 798
    :cond_16
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 799
    .line 800
    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->l:Z

    .line 801
    .line 802
    invoke-virtual {p1, v8, v0, v1}, Lcom/mbridge/msdk/videocommon/download/b;->a(ILjava/lang/String;Z)Lcom/mbridge/msdk/videocommon/download/a;

    .line 803
    .line 804
    .line 805
    move-result-object p1

    .line 806
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 807
    .line 808
    :cond_17
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 809
    .line 810
    if-eqz p1, :cond_18

    .line 811
    .line 812
    invoke-virtual {p1}, Lcom/mbridge/msdk/videocommon/download/a;->c()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 813
    .line 814
    .line 815
    move-result-object p1

    .line 816
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 817
    .line 818
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 819
    .line 820
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/videocommon/download/a;->b(Z)V

    .line 821
    .line 822
    .line 823
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 824
    .line 825
    invoke-virtual {p1, v6}, Lcom/mbridge/msdk/videocommon/download/a;->d(Z)V

    .line 826
    .line 827
    .line 828
    :cond_18
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->v:Lcom/mbridge/msdk/videocommon/download/a;

    .line 829
    .line 830
    if-eqz p1, :cond_1f

    .line 831
    .line 832
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 833
    .line 834
    if-eqz p1, :cond_1f

    .line 835
    .line 836
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->i:Lcom/mbridge/msdk/videocommon/entity/c;

    .line 837
    .line 838
    if-nez p1, :cond_19

    .line 839
    .line 840
    goto :goto_5

    .line 841
    :cond_19
    iput-boolean v6, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->p:Z

    .line 842
    .line 843
    invoke-static {}, Lcom/mbridge/msdk/videocommon/cache/a;->a()Lcom/mbridge/msdk/videocommon/cache/a;

    .line 844
    .line 845
    .line 846
    move-result-object p1

    .line 847
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 848
    .line 849
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/videocommon/cache/a;->a(Ljava/util/List;)Ljava/util/List;

    .line 850
    .line 851
    .line 852
    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 853
    const-string v0, "no available campaign"

    .line 854
    .line 855
    if-nez p1, :cond_1a

    .line 856
    .line 857
    :try_start_5
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    return-void

    .line 861
    :cond_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 862
    .line 863
    .line 864
    move-result v1

    .line 865
    if-nez v1, :cond_1b

    .line 866
    .line 867
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    return-void

    .line 871
    :cond_1b
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    if-eqz v0, :cond_1e

    .line 876
    .line 877
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v0

    .line 881
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 882
    .line 883
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    .line 884
    .line 885
    .line 886
    move-result v0

    .line 887
    if-eqz v0, :cond_1e

    .line 888
    .line 889
    if-ne v1, v3, :cond_1d

    .line 890
    .line 891
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object p1

    .line 895
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 896
    .line 897
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 898
    .line 899
    if-eqz p1, :cond_1c

    .line 900
    .line 901
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object p1

    .line 905
    iput-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->N:Ljava/lang/String;

    .line 906
    .line 907
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 908
    .line 909
    invoke-virtual {p1, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignIsFiltered(Z)V

    .line 910
    .line 911
    .line 912
    :cond_1c
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 913
    .line 914
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 915
    .line 916
    .line 917
    goto :goto_7

    .line 918
    :cond_1d
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/util/List;)V

    .line 919
    .line 920
    .line 921
    goto :goto_7

    .line 922
    :cond_1e
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->j()V

    .line 923
    .line 924
    .line 925
    goto :goto_7

    .line 926
    :cond_1f
    :goto_5
    invoke-direct {p0, v5}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    return-void

    .line 930
    :cond_20
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 931
    .line 932
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object p1

    .line 936
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 937
    .line 938
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 939
    .line 940
    .line 941
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->B:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 942
    .line 943
    if-eqz p1, :cond_21

    .line 944
    .line 945
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 946
    .line 947
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 952
    .line 953
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 958
    .line 959
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v1

    .line 963
    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 964
    .line 965
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalAllowTrackClick()I

    .line 966
    .line 967
    .line 968
    move-result v1

    .line 969
    invoke-static {p1, v0, v1}, Lcom/mbridge/msdk/foundation/tools/a1;->a(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 970
    .line 971
    .line 972
    :try_start_6
    iget-object p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->B:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 973
    .line 974
    invoke-virtual {p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object p1

    .line 978
    check-cast p1, Lcom/mbridge/msdk/video/signal/impl/k;

    .line 979
    .line 980
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->T:Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;

    .line 981
    .line 982
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/video/signal/impl/a;->setAdEvents(Lcom/iab/omid/library/mmadbridge/adsession/AdEvents;)V

    .line 983
    .line 984
    .line 985
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->R:Lcom/iab/omid/library/mmadbridge/adsession/AdSession;

    .line 986
    .line 987
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/video/signal/impl/a;->setAdSession(Lcom/iab/omid/library/mmadbridge/adsession/AdSession;)V

    .line 988
    .line 989
    .line 990
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->S:Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    .line 991
    .line 992
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/video/signal/impl/a;->setVideoEvents(Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;)V

    .line 993
    .line 994
    .line 995
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->B:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 996
    .line 997
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 998
    .line 999
    .line 1000
    goto :goto_6

    .line 1001
    :catch_1
    move-exception p1

    .line 1002
    :try_start_7
    const-string v0, "MBRewardVideoActivity"

    .line 1003
    .line 1004
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object p1

    .line 1008
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    .line 1010
    .line 1011
    :cond_21
    :goto_6
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->k()V

    .line 1012
    .line 1013
    .line 1014
    :goto_7
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 1015
    .line 1016
    .line 1017
    move-result p1

    .line 1018
    if-nez p1, :cond_22

    .line 1019
    .line 1020
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->e()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1021
    .line 1022
    .line 1023
    goto :goto_9

    .line 1024
    :goto_8
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 1025
    .line 1026
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a(Ljava/util/List;)V

    .line 1027
    .line 1028
    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1032
    .line 1033
    .line 1034
    const-string v1, "onCreate error"

    .line 1035
    .line 1036
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object p1

    .line 1046
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    :cond_22
    :goto_9
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "onDestroy"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "_onDestroy"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 32
    .line 33
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onDestroy()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    const-string/jumbo v1, "unKnown"

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 57
    .line 58
    :goto_1
    const-string v2, "activity_life_cycle"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    iget-wide v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->U:J

    .line 68
    .line 69
    sub-long/2addr v1, v3

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v2, "activity_duration"

    .line 75
    .line 76
    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->W:Ljava/lang/Boolean;

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x2

    .line 83
    const/4 v4, 0x1

    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    move v1, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    move v1, v4

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    move v1, v3

    .line 97
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v5, "is_unexpected_destroy"

    .line 102
    .line 103
    invoke-virtual {v0, v5, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 107
    .line 108
    if-nez v1, :cond_4

    .line 109
    .line 110
    move v1, v4

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move v1, v3

    .line 113
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v5, "is_listener_null"

    .line 118
    .line 119
    invoke-virtual {v0, v5, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->Y:Z

    .line 123
    .line 124
    if-eqz v1, :cond_5

    .line 125
    .line 126
    move v1, v4

    .line 127
    goto :goto_4

    .line 128
    :cond_5
    move v1, v3

    .line 129
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v5, "is_called_finish"

    .line 134
    .line 135
    invoke-virtual {v0, v5, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->Z:Z

    .line 139
    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    move v1, v4

    .line 143
    goto :goto_5

    .line 144
    :cond_6
    move v1, v3

    .line 145
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v5, "is_back_pressed"

    .line 150
    .line 151
    invoke-virtual {v0, v5, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->r:Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 155
    .line 156
    if-nez v1, :cond_7

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    iget v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->X:I

    .line 164
    .line 165
    if-ne v1, v2, :cond_8

    .line 166
    .line 167
    move v2, v4

    .line 168
    goto :goto_6

    .line 169
    :cond_8
    move v2, v3

    .line 170
    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const-string v2, "is_listener_change"

    .line 175
    .line 176
    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 184
    .line 185
    const-string v5, "2000151"

    .line 186
    .line 187
    invoke-virtual {v1, v5, v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 188
    .line 189
    .line 190
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->g()V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/report/b;->a(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-direct {p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->h()V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 202
    .line 203
    const/4 v1, 0x0

    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onDestroy()V

    .line 207
    .line 208
    .line 209
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 210
    .line 211
    :cond_9
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 212
    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onDestroy()V

    .line 216
    .line 217
    .line 218
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 219
    .line 220
    :cond_a
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->a0:Lcom/mbridge/msdk/video/dynview/listener/a;

    .line 221
    .line 222
    iput-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->b0:Lcom/mbridge/msdk/video/dynview/listener/d;

    .line 223
    .line 224
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v2, "_"

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    new-instance v1, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$e;

    .line 285
    .line 286
    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    .line 287
    .line 288
    iget-object v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 289
    .line 290
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->D:Ljava/lang/String;

    .line 291
    .line 292
    invoke-direct {v1, v2, v3, v4}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$e;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 296
    .line 297
    .line 298
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "onPause"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "_onPause"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onPause()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onPause()V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "onRestart"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "_onRestart"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onRestart()V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onRestart()V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/activity/AbstractJSActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "onResume"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "_onResume"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 35
    .line 36
    sget-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->mbridgeVideoView:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p0}, Lcom/mbridge/msdk/foundation/controller/a;->a(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$f;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->x:Ljava/util/List;

    .line 69
    .line 70
    invoke-direct {v1, v2, v3}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$f;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "MBRewardVideoActivity"

    .line 83
    .line 84
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 88
    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onResume()V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 95
    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onResume()V

    .line 99
    .line 100
    .line 101
    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->SAVE_STATE_KEY_REPORT:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->u:Z

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onStart()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "onStart"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "_onStart"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 35
    .line 36
    sget-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    new-instance v0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$d;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity$d;-><init>(Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 47
    .line 48
    const-string v1, "_"

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onStart()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 57
    .line 58
    iget-object v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->w:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 88
    .line 89
    invoke-virtual {v0, v3, v4}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->onStart()V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 100
    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-lez v0, :cond_3

    .line 108
    .line 109
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->y:Ljava/util/List;

    .line 110
    .line 111
    const/4 v3, 0x0

    .line 112
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 117
    .line 118
    iget-object v3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object v5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v3, v4, v0}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    iget-boolean v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->F:Z

    .line 151
    .line 152
    if-nez v0, :cond_4

    .line 153
    .line 154
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v0, v3, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;I)V

    .line 179
    .line 180
    .line 181
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    iget-object v4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->f:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const/4 v1, 0x2

    .line 199
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/b;->d(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iput-boolean v2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->F:Z

    .line 210
    .line 211
    :cond_4
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "onStop"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "_onStop"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    iput-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->V:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->isRewardActivityShowing:Z

    .line 35
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onStop()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->onStop()V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 1
    const-string p1, "mbridge_transparent_theme"

    .line 2
    .line 3
    const-string/jumbo v0, "style"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, v0}, Lcom/mbridge/msdk/foundation/tools/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setTopControllerPadding(IIIII)V
    .locals 7

    .line 1
    iput p2, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->I:I

    .line 2
    .line 3
    iput p3, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->K:I

    .line 4
    .line 5
    iput p4, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->J:I

    .line 6
    .line 7
    iput p5, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->L:I

    .line 8
    .line 9
    iput p1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->M:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->z:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v1, p1

    .line 16
    move v2, p2

    .line 17
    move v3, p3

    .line 18
    move v4, p4

    .line 19
    move v5, p5

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->setNotchPadding(IIIII)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/reward/player/MBRewardVideoActivity;->A:Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move v2, p1

    .line 28
    move v3, p2

    .line 29
    move v4, p3

    .line 30
    move v5, p4

    .line 31
    move v6, p5

    .line 32
    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->setNotchPadding(IIIII)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/mbridge/msdk/video/dynview/constant/a;->a(IIIII)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
