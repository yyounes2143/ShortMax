.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$e;
.super Ljava/lang/Object;
.source "MyListMixFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/mylist/SubscribeEntranceView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->W1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 17

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    const/16 v6, 0x1c

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    const-string v1, "recently"

    .line 7
    .line 8
    const-string v2, "sub_portal"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->e0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v8, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Q:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;

    .line 17
    .line 18
    move-object/from16 v0, p0

    .line 19
    .line 20
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$e;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    const-string v1, "requireContext(...)"

    .line 27
    .line 28
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 v15, 0x1c

    .line 32
    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    const-string v10, "recently"

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v13, 0x0

    .line 40
    const-string v14, "sub_portal"

    .line 41
    .line 42
    invoke-static/range {v8 .. v16}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;->b(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
