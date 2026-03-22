.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$d;
.super Lyd/d;
.source "Ad2SubscribeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->N(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 7

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->I()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->H()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->u(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    move-object v5, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->s(Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    const-string v2, "ad_to_subscription"

    .line 43
    .line 44
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->W(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;->dismiss()V

    .line 50
    .line 51
    .line 52
    return-void
.end method
