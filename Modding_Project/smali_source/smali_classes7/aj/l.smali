.class public final synthetic Laj/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/wallet/CoinsRecordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/CoinsRecordFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Laj/l;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/CoinsRecordFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Laj/l;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/CoinsRecordFragment;

    .line 2
    .line 3
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/CoinsRecordFragment;->b1(Lcom/startshorts/androidplayer/ui/fragment/wallet/CoinsRecordFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
