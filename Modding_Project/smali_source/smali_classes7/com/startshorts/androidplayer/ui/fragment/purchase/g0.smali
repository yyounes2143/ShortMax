.class public final synthetic Lcom/startshorts/androidplayer/ui/fragment/purchase/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/g0;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/g0;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;

    .line 2
    .line 3
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    check-cast p2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;->M0(Lcom/startshorts/androidplayer/ui/fragment/purchase/TopUpFragment;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
