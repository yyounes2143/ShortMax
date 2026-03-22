.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$b;
.super Ljava/lang/Object;
.source "DiscoverMoreFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->i0()V
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
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$b;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$b;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V
    .locals 9

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "d"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->K0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    const-string v1, "mModuleInfo"

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object p1, v0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleType()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v2, "coming_soon"

    .line 31
    .line 32
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_4

    .line 37
    .line 38
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$b;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->J()Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    add-int/lit8 p3, p3, 0x1

    .line 47
    .line 48
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->setPositionId(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$b;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMoreAdapter;->J()Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->H(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)Landroid/os/Bundle;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string p3, "reel_id"

    .line 75
    .line 76
    invoke-virtual {v4, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p1, "type"

    .line 80
    .line 81
    const-string p3, "positive"

    .line 82
    .line 83
    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p1, "skip_type"

    .line 87
    .line 88
    const-string p3, "reel"

    .line 89
    .line 90
    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p1, "scene"

    .line 94
    .line 95
    const-string p3, "discover_more"

    .line 96
    .line 97
    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_2

    .line 109
    .line 110
    const-string p1, "upack"

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    const/4 v7, 0x4

    .line 122
    const/4 v8, 0x0

    .line 123
    const-string v3, "discover_module_click"

    .line 124
    .line 125
    const-wide/16 v5, 0x0

    .line 126
    .line 127
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->K0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    if-nez p3, :cond_3

    .line 137
    .line 138
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    move-object v0, p3

    .line 143
    :goto_0
    invoke-static {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;->L0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreFragment;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    return-void
.end method
