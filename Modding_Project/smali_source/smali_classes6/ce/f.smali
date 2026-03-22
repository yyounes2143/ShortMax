.class public final synthetic Lce/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

.field public final synthetic c:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lce/f;->a:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    iput-object p2, p0, Lce/f;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 7
    .line 8
    iput-object p3, p0, Lce/f;->c:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 9
    .line 10
    iput-object p4, p0, Lce/f;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lce/f;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object v1, p0, Lce/f;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 4
    .line 5
    iget-object v2, p0, Lce/f;->c:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 6
    .line 7
    iget-object v3, p0, Lce/f;->d:Ljava/lang/String;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    move-object v5, p2

    .line 16
    check-cast v5, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static/range {v0 .. v5}, Lce/j;->a(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
