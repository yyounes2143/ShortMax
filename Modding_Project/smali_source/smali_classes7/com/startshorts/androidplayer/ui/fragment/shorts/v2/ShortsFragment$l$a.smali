.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$a;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->s(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initViewPagerAdapter$1$1\n*L\n1#1,20:1\n1087#2,12:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$a;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

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
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$a;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$a;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-class v3, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "from"

    .line 17
    .line 18
    const-string v3, "shorts"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 27
    .line 28
    new-instance v6, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v6, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    const/4 v9, 0x4

    .line 39
    const/4 v10, 0x0

    .line 40
    const-string v5, "search_click"

    .line 41
    .line 42
    const-wide/16 v7, 0x0

    .line 43
    .line 44
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$a;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
