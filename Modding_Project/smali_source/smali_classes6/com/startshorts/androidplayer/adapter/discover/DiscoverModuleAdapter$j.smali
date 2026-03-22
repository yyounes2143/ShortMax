.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;
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
    name = "j"
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
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:F

.field private m:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic n:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->n:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 12
    .line 13
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/high16 p2, 0x41a00000    # 20.0f

    .line 20
    .line 21
    invoke-static {p2}, Ljk/g;->a(F)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    mul-int/lit8 p2, p2, 0x2

    .line 26
    .line 27
    sub-int/2addr p1, p2

    .line 28
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->h:I

    .line 29
    .line 30
    int-to-double p1, p1

    .line 31
    const-wide v0, 0x3feced916872b021L    # 0.904

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    mul-double/2addr p1, v0

    .line 37
    invoke-static {p1, p2}, Lbt/a;->b(D)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->i:I

    .line 42
    .line 43
    const/high16 p1, 0x42140000    # 37.0f

    .line 44
    .line 45
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->j:I

    .line 50
    .line 51
    const/high16 p1, 0x42480000    # 50.0f

    .line 52
    .line 53
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->k:I

    .line 58
    .line 59
    sget-object p1, Lfk/z;->a:Lfk/z;

    .line 60
    .line 61
    invoke-virtual {p1}, Lfk/z;->r()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    int-to-float p1, p1

    .line 66
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->l:F

    .line 67
    .line 68
    new-instance p1, Lcom/startshorts/androidplayer/adapter/discover/f0;

    .line 69
    .line 70
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/discover/f0;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m:Lkotlin/jvm/functions/Function1;

    .line 74
    .line 75
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->p(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->q(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->n(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final n(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final p(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;Landroid/view/View;)V
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
    sget-object p5, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 8
    .line 9
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p5, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

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
    const/4 v5, 0x0

    .line 21
    move v1, p1

    .line 22
    move-object v2, p2

    .line 23
    move-object v4, p3

    .line 24
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n$a;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->i:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_4

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
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

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
    const-string p2, "reel_id"

    .line 59
    .line 60
    invoke-virtual {v2, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p0, "scene"

    .line 64
    .line 65
    const-string p2, "discover"

    .line 66
    .line 67
    invoke-virtual {v2, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const-string p2, "module_name"

    .line 75
    .line 76
    invoke-virtual {v2, p2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p0, "module_id"

    .line 80
    .line 81
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-virtual {v2, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    add-int/lit8 p0, p0, 0x1

    .line 93
    .line 94
    const-string p2, "position_id"

    .line 95
    .line 96
    invoke-virtual {v2, p2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRecommendId()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-eqz p0, :cond_3

    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-nez p0, :cond_2

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    move-object p1, p0

    .line 113
    :cond_3
    :goto_0
    const-string p0, "audiences_recommend_id"

    .line 114
    .line 115
    invoke-virtual {v2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    const/4 v5, 0x4

    .line 121
    const/4 v6, 0x0

    .line 122
    const-string v1, "reel_video_preview_click"

    .line 123
    .line 124
    const-wide/16 v3, 0x0

    .line 125
    .line 126
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_4
    return-void
.end method

.method private static final q(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)Lkotlin/Unit;
    .locals 12

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lag/a;->a:Lag/a;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->l0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getSort()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStatus()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    const/16 v10, 0x94

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    move-object v2, p0

    .line 29
    move v3, p1

    .line 30
    invoke-static/range {v1 .. v11}, Lag/a;->c(Lag/a;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object v0
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShorts()Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v7, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v7, v1

    .line 17
    :goto_0
    if-eqz v7, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    sget v2, Lcom/startshorts/androidplayer/R$id;->video_preview:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v3, v0

    .line 28
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 29
    .line 30
    const/16 v0, 0x1e0

    .line 31
    .line 32
    invoke-virtual {v7, v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->parseVideoUrl(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string v0, ""

    .line 39
    .line 40
    :cond_1
    move-object v5, v0

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-lez v0, :cond_2

    .line 48
    .line 49
    new-instance v1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 50
    .line 51
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getNeedDecrypt()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object v6, v0

    .line 63
    check-cast v6, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 64
    .line 65
    const/16 v11, 0x40

    .line 66
    .line 67
    const/4 v12, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v10, 0x1

    .line 71
    move-object v2, v1

    .line 72
    invoke-direct/range {v2 .. v12}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-object v1
.end method

.method public b(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 1
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->o(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 17
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v7, p2

    .line 6
    .line 7
    const-string v1, "item"

    .line 8
    .line 9
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getShorts()Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    if-nez v8, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v2, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->i:I

    .line 34
    .line 35
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    sget v4, Lcom/startshorts/androidplayer/R$string;->cover_pic:I

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/16 v3, 0x20

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    sget-object v1, Lkk/f;->a:Lkk/f;

    .line 100
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 106
    .line 107
    new-instance v4, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 108
    .line 109
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object v5, Lid/c;->a:Lid/c;

    .line 120
    .line 121
    invoke-virtual {v5}, Lid/c;->b()I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    invoke-virtual {v4, v10}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5}, Lid/c;->a()I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 133
    .line 134
    .line 135
    iget v5, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->j:I

    .line 136
    .line 137
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 138
    .line 139
    .line 140
    iget v5, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->k:I

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 143
    .line 144
    .line 145
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 146
    .line 147
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 148
    .line 149
    .line 150
    const/4 v5, 0x1

    .line 151
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 152
    .line 153
    .line 154
    iget v5, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->l:F

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 157
    .line 158
    .line 159
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 160
    .line 161
    invoke-virtual {v1, v2, v4}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 162
    .line 163
    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 169
    .line 170
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 182
    .line 183
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getRecommendContent()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    if-eqz v4, :cond_2

    .line 188
    .line 189
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-nez v4, :cond_1

    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getRecommendContent()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    goto :goto_1

    .line 201
    :cond_2
    :goto_0
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->e:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 213
    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->e:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 224
    .line 225
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    sget v10, Lcom/startshorts/androidplayer/R$string;->preview_pic:I

    .line 230
    .line 231
    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->e:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 273
    .line 274
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 275
    .line 276
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getHorizontalCoverId()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget v3, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->h:I

    .line 287
    .line 288
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 289
    .line 290
    .line 291
    iget v3, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->i:I

    .line 292
    .line 293
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 294
    .line 295
    .line 296
    iget v3, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->h:I

    .line 297
    .line 298
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 299
    .line 300
    .line 301
    iget v3, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->i:I

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 304
    .line 305
    .line 306
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_preview_placeholder:I

    .line 307
    .line 308
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 309
    .line 310
    .line 311
    sget-object v3, Lc3/q;->g:Lc3/q;

    .line 312
    .line 313
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderScaleType(Lc3/q;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v0, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 317
    .line 318
    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->i:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 324
    .line 325
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getHorizontalCoverId()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    if-nez v1, :cond_3

    .line 330
    .line 331
    const-string v1, ""

    .line 332
    .line 333
    :cond_3
    iget v2, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->h:I

    .line 334
    .line 335
    iget v3, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->i:I

    .line 336
    .line 337
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;->i(Ljava/lang/String;II)V

    .line 338
    .line 339
    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    iget-object v10, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->f:Landroidx/cardview/widget/CardView;

    .line 345
    .line 346
    iget-object v1, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->n:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 347
    .line 348
    new-instance v11, Lcom/startshorts/androidplayer/adapter/discover/d0;

    .line 349
    .line 350
    move-object v0, v11

    .line 351
    move v2, v9

    .line 352
    move-object v3, v8

    .line 353
    move-object/from16 v4, p2

    .line 354
    .line 355
    move-object/from16 v5, p0

    .line 356
    .line 357
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/adapter/discover/d0;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 368
    .line 369
    .line 370
    move-result-object v10

    .line 371
    const-string v0, "getRoot(...)"

    .line 372
    .line 373
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    if-nez v9, :cond_4

    .line 377
    .line 378
    const/4 v0, 0x0

    .line 379
    :goto_2
    move v12, v0

    .line 380
    goto :goto_3

    .line 381
    :cond_4
    const/high16 v0, 0x41800000    # 16.0f

    .line 382
    .line 383
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    goto :goto_2

    .line 388
    :goto_3
    const/high16 v0, 0x41a00000    # 20.0f

    .line 389
    .line 390
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 391
    .line 392
    .line 393
    move-result v11

    .line 394
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 395
    .line 396
    .line 397
    move-result v13

    .line 398
    const/16 v15, 0x8

    .line 399
    .line 400
    const/16 v16, 0x0

    .line 401
    .line 402
    const/4 v14, 0x0

    .line 403
    invoke-static/range {v10 .. v16}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    iget-object v0, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->n:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 407
    .line 408
    new-instance v1, Lcom/startshorts/androidplayer/adapter/discover/e0;

    .line 409
    .line 410
    invoke-direct {v1, v8, v9, v0, v7}, Lcom/startshorts/androidplayer/adapter/discover/e0;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ILcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 411
    .line 412
    .line 413
    iput-object v1, v6, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m:Lkotlin/jvm/functions/Function1;

    .line 414
    .line 415
    return-void
.end method

.method public final r()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    const/4 v2, 0x1

    .line 17
    add-int/2addr v0, v2

    .line 18
    rem-int/lit8 v0, v0, 0x3

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    move v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, v1

    .line 25
    :goto_1
    sget-object v3, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->l()Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;->b(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sget-object v4, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "horizontal_video"

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->p(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    sget-object v5, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 50
    .line 51
    sget-object v6, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

    .line 52
    .line 53
    filled-new-array {v6}, [Lcom/hades/aar/admanager/core/AdFormat;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->C([Lcom/hades/aar/admanager/core/AdFormat;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    iget-object v7, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->n:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 62
    .line 63
    new-instance v8, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v9, "updateNativeAdView -> position("

    .line 69
    .line 70
    .line 71
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    check-cast v9, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 79
    .line 80
    if-eqz v9, :cond_2

    .line 81
    .line 82
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getPosition()I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    const/4 v9, 0x0

    .line 92
    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v9, ") isThreePosition("

    .line 96
    .line 97
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v9, ") nativeAdEnable("

    .line 104
    .line 105
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v9, ") adSceneEnable("

    .line 112
    .line 113
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v9, ") existCache("

    .line 120
    .line 121
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v9, ") childCount("

    .line 128
    .line 129
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    iget-object v9, v9, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->a:Landroidx/cardview/widget/CardView;

    .line 137
    .line 138
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const/16 v9, 0x29

    .line 146
    .line 147
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v7, v8}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    if-eqz v3, :cond_5

    .line 160
    .line 161
    if-eqz v4, :cond_5

    .line 162
    .line 163
    if-eqz v6, :cond_4

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    iget-object v7, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->a:Landroidx/cardview/widget/CardView;

    .line 170
    .line 171
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->n:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 172
    .line 173
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-nez v3, :cond_4

    .line 181
    .line 182
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 183
    .line 184
    new-instance v10, Landroid/os/Bundle;

    .line 185
    .line 186
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v3, "ad_placement"

    .line 190
    .line 191
    const-string v4, "discover_card_native"

    .line 192
    .line 193
    invoke-virtual {v10, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string/jumbo v3, "type"

    .line 197
    .line 198
    .line 199
    const-string v4, "3"

    .line 200
    .line 201
    invoke-virtual {v10, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 205
    .line 206
    const/4 v13, 0x4

    .line 207
    const/4 v14, 0x0

    .line 208
    const-string v9, "ad_placement_show"

    .line 209
    .line 210
    const-wide/16 v11, 0x0

    .line 211
    .line 212
    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->Q(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)Ljava/lang/ref/WeakReference;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->M()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_3

    .line 227
    .line 228
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_native_ad_admob_1:I

    .line 229
    .line 230
    :goto_3
    move v8, v0

    .line 231
    goto :goto_4

    .line 232
    :cond_3
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_native_ad_tp_1:I

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :goto_4
    new-instance v12, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j$a;

    .line 236
    .line 237
    invoke-direct {v12, v7}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j$a;-><init>(Landroidx/cardview/widget/CardView;)V

    .line 238
    .line 239
    .line 240
    const/16 v13, 0x30

    .line 241
    .line 242
    const/4 v14, 0x0

    .line 243
    const-string v9, "discover_card_native"

    .line 244
    .line 245
    const/4 v10, 0x0

    .line 246
    const/4 v11, 0x0

    .line 247
    invoke-static/range {v5 .. v14}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->o0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lca/f$f;ILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->a:Landroidx/cardview/widget/CardView;

    .line 255
    .line 256
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-ne v3, v2, :cond_6

    .line 261
    .line 262
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    const-string v3, "playEnd"

    .line 267
    .line 268
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    if-nez v2, :cond_6

    .line 273
    .line 274
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverHorizontalImageVideoPreviewBinding;->a:Landroidx/cardview/widget/CardView;

    .line 283
    .line 284
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$j;->n:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 285
    .line 286
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-nez v2, :cond_6

    .line 291
    .line 292
    const-string v2, "clear AdContainer2"

    .line 293
    .line 294
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 298
    .line 299
    .line 300
    const/16 v1, 0x8

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    :cond_6
    :goto_5
    return-void
.end method
