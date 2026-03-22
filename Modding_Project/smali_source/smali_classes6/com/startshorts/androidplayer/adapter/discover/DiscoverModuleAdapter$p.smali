.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverModuleAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
        ">.ViewHolder;",
        "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$l;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->m(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final m(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->k0()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p4, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p4, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/16 v6, 0x10

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    move-object v2, p1

    .line 23
    move-object v4, p2

    .line 24
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n$a;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;->e:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-nez p3, :cond_4

    .line 38
    .line 39
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, ""

    .line 54
    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    move-object p0, p1

    .line 58
    :cond_1
    const-string p3, "reel_id"

    .line 59
    .line 60
    invoke-virtual {v2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p0, "scene"

    .line 64
    .line 65
    const-string p3, "discover"

    .line 66
    .line 67
    invoke-virtual {v2, p0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p3, "module_name"

    .line 75
    .line 76
    invoke-virtual {v2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p0, "module_id"

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {v2, p0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string p0, "position_id"

    .line 89
    .line 90
    const/4 p3, 0x1

    .line 91
    invoke-virtual {v2, p0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-nez p0, :cond_2

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    move-object p1, p0

    .line 108
    :cond_3
    :goto_0
    const-string p0, "audiences_recommend_id"

    .line 109
    .line 110
    invoke-virtual {v2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    const/4 v5, 0x4

    .line 116
    const/4 v6, 0x0

    .line 117
    const-string v1, "reel_video_preview_click"

    .line 118
    .line 119
    const-wide/16 v3, 0x0

    .line 120
    .line 121
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lud/a;->a:Lud/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/a;->J()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 30
    .line 31
    move-object v7, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v7, v1

    .line 34
    :goto_0
    if-eqz v7, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 37
    .line 38
    sget v2, Lcom/startshorts/androidplayer/R$id;->video_preview:I

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    move-object v3, v0

    .line 45
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 46
    .line 47
    const/16 v0, 0x1e0

    .line 48
    .line 49
    invoke-virtual {v7, v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->parseVideoUrl(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    const-string v0, ""

    .line 56
    .line 57
    :cond_2
    move-object v5, v0

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-lez v0, :cond_3

    .line 65
    .line 66
    new-instance v1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 67
    .line 68
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getNeedDecrypt()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object v6, v0

    .line 80
    check-cast v6, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 81
    .line 82
    const/4 v9, 0x2

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v8, 0x1

    .line 85
    move-object v2, v1

    .line 86
    invoke-direct/range {v2 .. v10}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ZIZ)V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-object v1
.end method

.method public b(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 11
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "discoverModule"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 11
    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    move-object v1, p1

    .line 25
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 30
    .line 31
    sget-object v0, Lag/a;->a:Lag/a;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getSort()Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    move-object v6, p1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v6, v2

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 58
    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStatus()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    move-object v7, p1

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move-object v7, v2

    .line 68
    :goto_1
    const/16 v9, 0x94

    .line 69
    .line 70
    const/4 v10, 0x0

    .line 71
    const/4 v2, 0x0

    .line 72
    const/4 v3, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v8, 0x0

    .line 75
    invoke-static/range {v0 .. v10}, Lag/a;->c(Lag/a;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 4
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShortPlayResponseList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v3, 0x20

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 75
    .line 76
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 77
    .line 78
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->X()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->W()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 100
    .line 101
    .line 102
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 105
    .line 106
    .line 107
    const/4 v3, 0x1

    .line 108
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->S()F

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 116
    .line 117
    .line 118
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    invoke-virtual {p1, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 121
    .line 122
    .line 123
    sget-object p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {p1, v1, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 147
    .line 148
    new-instance v2, Lcom/startshorts/androidplayer/adapter/discover/g0;

    .line 149
    .line 150
    invoke-direct {v2, v1, v0, p2, p0}, Lcom/startshorts/androidplayer/adapter/discover/g0;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$p;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleMain1Row2ColumnXMainPartBinding;->e:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 187
    .line 188
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->S()F

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->setCornerRadius(Ljava/lang/Float;)V

    .line 197
    .line 198
    .line 199
    :cond_1
    :goto_0
    return-void
.end method
