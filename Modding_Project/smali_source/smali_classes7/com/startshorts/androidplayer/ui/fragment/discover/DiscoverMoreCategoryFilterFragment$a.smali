.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$a;
.super Ljava/lang/Object;
.source "DiscoverMoreCategoryFilterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverMoreCategoryFilterFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "moduleInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "categoryVOList"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "from"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "DiscoverMoreCategoryFilterFragment -> moduleInfo="

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "DiscoverMoreCategoryFilterFragment"

    .line 41
    .line 42
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getTab()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-string v1, "module_name"

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "module_id"

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleId()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "module_type"

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->getModuleType()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 83
    .line 84
    const/4 v9, 0x4

    .line 85
    const/4 v10, 0x0

    .line 86
    const-string v5, "discover_more_click"

    .line 87
    .line 88
    const-wide/16 v7, 0x0

    .line 89
    .line 90
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 94
    .line 95
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 96
    .line 97
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/a;->e()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    new-instance v3, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 102
    .line 103
    const-string v4, "module_info_param"

    .line 104
    .line 105
    invoke-static {p2}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-direct {v3, v4, p2}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    new-instance p2, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 113
    .line 114
    const-string v4, "category_list_param"

    .line 115
    .line 116
    invoke-static {p3}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-direct {p2, v4, p3}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance p3, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 124
    .line 125
    invoke-direct {p3, v0, p4}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const/4 p4, 0x3

    .line 129
    new-array p4, p4, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 130
    .line 131
    const/4 v0, 0x0

    .line 132
    aput-object v3, p4, v0

    .line 133
    .line 134
    const/4 v0, 0x1

    .line 135
    aput-object p2, p4, v0

    .line 136
    .line 137
    const/4 p2, 0x2

    .line 138
    aput-object p3, p4, p2

    .line 139
    .line 140
    invoke-virtual {v1, p1, v2, p4}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
