.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0$a;
.super Ljava/lang/Object;
.source "RewardsFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

.field final synthetic b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0$a;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0$a;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0$a;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->C1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/ui/fragment/checkin/CheckInSuccessDialog;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0$a;->b:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$x0$a;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/reward/c$f;

    .line 19
    .line 20
    const-string v2, "1"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/reward/c$f;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
