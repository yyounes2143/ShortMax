.class public final synthetic Lge/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lge/h;->a:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lge/h;->a:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignProvider;->b(Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;Ljava/lang/String;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
