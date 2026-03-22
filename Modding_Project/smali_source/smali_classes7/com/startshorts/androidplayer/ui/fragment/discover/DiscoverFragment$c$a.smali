.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c;->f(ILcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;)V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$2$1\n*L\n1#1,20:1\n534#2,14:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

.field final synthetic c:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 10
    .line 11
    iput p6, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->f:I

    .line 12
    .line 13
    iput-object p7, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->g:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->v:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "requireContext(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShorts()Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->c:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->d:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v5, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "module_name"

    .line 46
    .line 47
    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "module_id"

    .line 57
    .line 58
    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->f:I

    .line 62
    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "position_id"

    .line 70
    .line 71
    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getSubTagId()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const-string v1, "subtag_id"

    .line 81
    .line 82
    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    const-string v0, "module_type"

    .line 86
    .line 87
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->g:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v7, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v0, "type"

    .line 93
    .line 94
    const-string v1, "positive"

    .line 95
    .line 96
    invoke-virtual {v7, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getSort()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    const-string v1, "module_list"

    .line 114
    .line 115
    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    const/4 v10, 0x4

    .line 121
    const/4 v11, 0x0

    .line 122
    const-string v6, "discover_module_click"

    .line 123
    .line 124
    const-wide/16 v8, 0x0

    .line 125
    .line 126
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$c$a;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
