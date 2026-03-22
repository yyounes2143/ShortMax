.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$b;
.super Ljava/lang/Object;
.source "DiscoverMoreCategoryFilterListFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->i0()V
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
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$b;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->c1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

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
    if-nez p1, :cond_6

    .line 37
    .line 38
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->c1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move-object p1, v0

    .line 50
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 51
    .line 52
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->setPositionId(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->c1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    move-object p1, v0

    .line 67
    :cond_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 75
    .line 76
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->c1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object p1, v0

    .line 88
    :cond_3
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->H(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)Landroid/os/Bundle;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string p1, "reel_id"

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string p1, "type"

    .line 102
    .line 103
    const-string p3, "positive"

    .line 104
    .line 105
    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string p1, "skip_type"

    .line 109
    .line 110
    const-string p3, "reel"

    .line 111
    .line 112
    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string p1, "scene"

    .line 116
    .line 117
    const-string p3, "discover_more"

    .line 118
    .line 119
    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_4

    .line 131
    .line 132
    const-string p1, "upack"

    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {v4, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 142
    .line 143
    const/4 v7, 0x4

    .line 144
    const/4 v8, 0x0

    .line 145
    const-string v3, "discover_module_click"

    .line 146
    .line 147
    const-wide/16 v5, 0x0

    .line 148
    .line 149
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->c1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    if-nez p3, :cond_5

    .line 159
    .line 160
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_5
    move-object v0, p3

    .line 165
    :goto_0
    invoke-static {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;->d1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterListFragment;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 166
    .line 167
    .line 168
    :cond_6
    return-void
.end method
