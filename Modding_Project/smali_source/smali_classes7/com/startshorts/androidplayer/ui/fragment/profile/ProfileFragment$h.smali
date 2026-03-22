.class final Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$h;
.super Ljava/lang/Object;
.source "ProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$h;->a:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Q:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$h;->a:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 4
    .line 5
    const/16 v7, 0x1c

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    const-string v2, "profile"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const-string v6, "current_membership_upgrade"

    .line 14
    .line 15
    invoke-static/range {v0 .. v8}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;->b(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment$h;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
