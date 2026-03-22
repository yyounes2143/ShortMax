.class public final Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$b;
.super Ljava/lang/Object;
.source "TagFilterListFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$b;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V
    .locals 7

    .line 1
    const-string p3, "v"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "discoverShorts"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 17
    .line 18
    new-instance v2, Landroid/os/Bundle;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;

    .line 24
    .line 25
    const-string p2, "from"

    .line 26
    .line 27
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->d1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {v2, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p2, "tab"

    .line 35
    .line 36
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->f1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    invoke-virtual {v2, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string p2, "type_id"

    .line 44
    .line 45
    const-string p3, "tag_fullscreen_page"

    .line 46
    .line 47
    invoke-virtual {v2, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->c1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string p3, "reel_id"

    .line 55
    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-virtual {v2, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;->e1(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment;)Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {v2, p3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    const/4 v5, 0x4

    .line 81
    const/4 v6, 0x0

    .line 82
    const-string v1, "tag_page_click"

    .line 83
    .line 84
    const-wide/16 v3, 0x0

    .line 85
    .line 86
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
