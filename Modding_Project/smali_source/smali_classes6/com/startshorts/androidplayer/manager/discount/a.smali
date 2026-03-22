.class public final synthetic Lcom/startshorts/androidplayer/manager/discount/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/discount/a;->a:Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/discount/a;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/discount/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/discount/a;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/startshorts/androidplayer/manager/discount/a;->e:Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/discount/a;->a:Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/discount/a;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/discount/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/discount/a;->d:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/discount/a;->e:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/discount/DiscountSubscribeManager$checkDiscountSubs$1;->i(Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
