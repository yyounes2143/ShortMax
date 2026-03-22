.class public final Lcom/startshorts/androidplayer/ui/view/act/ActBanner;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "ActBanner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/act/ActBanner$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final i:Lcom/startshorts/androidplayer/ui/view/act/ActBanner$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/view/ViewStub;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/view/base/GuidePointView<",
            "Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Z

.field private g:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->i:Lcom/startshorts/androidplayer/ui/view/act/ActBanner$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->f:Z

    return-void
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Ljava/lang/ref/WeakReference;Ljava/lang/String;FILkotlin/jvm/functions/Function1;Landroidx/lifecycle/Lifecycle;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;ILjava/lang/Object;)V
    .locals 10

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move-object v9, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v9, p8

    .line 11
    .line 12
    :goto_0
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    move v4, p3

    .line 16
    move v5, p4

    .line 17
    move-object v6, p5

    .line 18
    move-object/from16 v7, p6

    .line 19
    .line 20
    move-object/from16 v8, p7

    .line 21
    .line 22
    invoke-virtual/range {v1 .. v9}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->z(Ljava/lang/ref/WeakReference;Ljava/lang/String;FILkotlin/jvm/functions/Function1;Landroidx/lifecycle/Lifecycle;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static final C(Ljava/util/List;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p5}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getRawSkipType()I

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    sget-object p5, Lcom/startshorts/androidplayer/manager/act/SkipType;->PROGRAMMATIC_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 15
    .line 16
    invoke-virtual {p5}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    if-eq p4, p5, :cond_1

    .line 21
    .line 22
    sget-object p4, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->i:Lcom/startshorts/androidplayer/ui/view/act/ActBanner$a;

    .line 23
    .line 24
    invoke-virtual {p4, p1, p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$a;->a(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 25
    .line 26
    .line 27
    sget-object p4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 28
    .line 29
    invoke-virtual {p4, p1, p0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->S(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 30
    .line 31
    .line 32
    const-string p4, "discover_banner"

    .line 33
    .line 34
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    if-eqz p4, :cond_1

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->E(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    sget-object p4, Lce/j;->a:Lce/j;

    .line 44
    .line 45
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    const-string p5, "getContext(...)"

    .line 50
    .line 51
    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p2, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->g:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 55
    .line 56
    invoke-virtual {p4, p3, p1, p0, p2}, Lce/j;->n(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private final D(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x0

    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    const-string v1, "task_center_banner"

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_0
    invoke-static {v0, p2, v4, v3, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v5, 0x4

    .line 33
    const/4 v6, 0x0

    .line 34
    const-string v1, "position_show"

    .line 35
    .line 36
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :sswitch_1
    const-string v1, "search_banner"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v0, p2, v4, v3, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v5, 0x4

    .line 56
    const/4 v6, 0x0

    .line 57
    const-string v1, "search_banner_show"

    .line 58
    .line 59
    const-wide/16 v3, 0x0

    .line 60
    .line 61
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :sswitch_2
    const-string v1, "mylist_banner"

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-static {v0, p2, v4, v3, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const/4 v5, 0x4

    .line 79
    const/4 v6, 0x0

    .line 80
    const-string v1, "mylist_banner_show"

    .line 81
    .line 82
    const-wide/16 v3, 0x0

    .line 83
    .line 84
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :sswitch_3
    const-string v1, "discover_banner"

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    invoke-static {v0, p2, v4, v3, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const/4 v5, 0x4

    .line 102
    const/4 v6, 0x0

    .line 103
    const-string v1, "discover_banner_show"

    .line 104
    .line 105
    const-wide/16 v3, 0x0

    .line 106
    .line 107
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :sswitch_4
    const-string v1, "profile_banner"

    .line 112
    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-nez p1, :cond_4

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_4
    invoke-static {v0, p2, v4, v3, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const/4 v5, 0x4

    .line 125
    const/4 v6, 0x0

    .line 126
    const-string v1, "profile_banner_show"

    .line 127
    .line 128
    const-wide/16 v3, 0x0

    .line 129
    .line 130
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResource;->isShorts()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    sget-object v0, Lag/a;->a:Lag/a;

    .line 140
    .line 141
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getSkipValue()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    const/16 v10, 0x1f8

    .line 146
    .line 147
    const/4 v11, 0x0

    .line 148
    const-string v1, "resource_bit"

    .line 149
    .line 150
    const/4 v4, 0x0

    .line 151
    const/4 v5, 0x0

    .line 152
    const/4 v6, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v8, 0x0

    .line 155
    const/4 v9, 0x0

    .line 156
    move-object v3, p2

    .line 157
    invoke-static/range {v0 .. v11}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_5
    return-void

    .line 161
    :sswitch_data_0
    .sparse-switch
        -0x466e8d7e -> :sswitch_4
        0x14bafc42 -> :sswitch_3
        0x2e576cc1 -> :sswitch_2
        0x3974e9a3 -> :sswitch_1
        0x57ca911c -> :sswitch_0
    .end sparse-switch
.end method

.method private final E(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, p1, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->g:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p1, v1}, Ljk/b;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string p1, "module_type"

    .line 21
    .line 22
    const-string v1, "discover_banner"

    .line 23
    .line 24
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    const-string v1, "discover_module_click"

    .line 32
    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->h:Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->x()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final I(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->d:Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->c:Landroid/view/ViewStub;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;

    .line 22
    .line 23
    :cond_1
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->d:Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;

    .line 24
    .line 25
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    move v2, v1

    .line 32
    :goto_1
    if-ge v2, p1, :cond_4

    .line 33
    .line 34
    new-instance v3, Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;

    .line 35
    .line 36
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;-><init>()V

    .line 37
    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    move v4, v1

    .line 44
    :goto_2
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    new-instance p1, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 54
    .line 55
    sget v1, Lcom/startshorts/androidplayer/R$layout;->item_act_guide_point:I

    .line 56
    .line 57
    invoke-direct {p1, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->d:Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;->a(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;)V

    .line 65
    .line 66
    .line 67
    :cond_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->d:Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;->setSelectedIndex(I)V

    .line 72
    .line 73
    .line 74
    :cond_6
    return-void
.end method

.method public static synthetic v(Ljava/util/List;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->C(Ljava/util/List;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/ui/view/act/ActBanner;)Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->d:Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->D(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->d:Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/ref/WeakReference;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V
    .locals 10
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/Lifecycle;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "actRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "from"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "list"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 17
    .line 18
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    int-to-float v4, v0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p1

    .line 27
    move-object v3, p2

    .line 28
    move-object v7, p3

    .line 29
    move-object v8, p4

    .line 30
    move-object v9, p5

    .line 31
    invoke-virtual/range {v1 .. v9}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->z(Ljava/lang/ref/WeakReference;Ljava/lang/String;FILkotlin/jvm/functions/Function1;Landroidx/lifecycle/Lifecycle;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final F()V
    .locals 1

    .line 1
    const-string v0, "pause"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->f:Z

    .line 8
    .line 9
    return-void
.end method

.method public final H()V
    .locals 1

    .line 1
    const-string v0, "resume"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->f:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->G()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_act_banner:I

    .line 2
    .line 3
    return v0
.end method

.method public getSTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ActBanner"

    .line 2
    .line 3
    return-object v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "onWindowVisibilityChanged -> mFrom("

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->e:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ") mPaused("

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->f:Z

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ") visibility("

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x29

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->e:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->f:Z

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    if-nez p1, :cond_1

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->G()V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->view_pager:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->indicator_viewstub:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/view/ViewStub;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->c:Landroid/view/ViewStub;

    .line 25
    .line 26
    return-void
.end method

.method public final z(Ljava/lang/ref/WeakReference;Ljava/lang/String;FILkotlin/jvm/functions/Function1;Landroidx/lifecycle/Lifecycle;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)V
    .locals 7
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "FI",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/lifecycle/Lifecycle;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "actRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "from"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "list"

    .line 12
    .line 13
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->e:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->g:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 19
    .line 20
    const/4 p8, 0x0

    .line 21
    iput-boolean p8, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->f:Z

    .line 22
    .line 23
    new-instance v0, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->z(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;->y(F)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->h:Lcom/startshorts/androidplayer/adapter/act/ActBannerAdapter;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 37
    .line 38
    const/4 p3, 0x1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->D(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p8}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->N(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p8}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->M(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->E(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 51
    .line 52
    .line 53
    const/16 v0, 0xfa0

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->G(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 56
    .line 57
    .line 58
    const/16 v0, 0x1f4

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->R(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 61
    .line 62
    .line 63
    if-eqz p6, :cond_0

    .line 64
    .line 65
    invoke-virtual {p1, p6}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->A(Landroidx/lifecycle/Lifecycle;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 66
    .line 67
    .line 68
    :cond_0
    new-instance p6, Lbj/h;

    .line 69
    .line 70
    invoke-direct {p6, p7, p2, p0, p1}, Lbj/h;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p6}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->J(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 74
    .line 75
    .line 76
    new-instance p6, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;

    .line 77
    .line 78
    move-object v1, p6

    .line 79
    move-object v2, p7

    .line 80
    move-object v3, p0

    .line 81
    move-object v4, p5

    .line 82
    move-object v5, p1

    .line 83
    move-object v6, p2

    .line 84
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner$b;-><init>(Ljava/util/List;Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p6}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->B(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p7}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-interface {p7}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-ne p1, p3, :cond_2

    .line 98
    .line 99
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->y()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 104
    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p1, p4, p8}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->setCurrentItem(IZ)V

    .line 108
    .line 109
    .line 110
    :cond_3
    invoke-interface {p7}, Ljava/util/List;->size()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    invoke-direct {p0, p1, p4}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->I(II)V

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-static {p7}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 122
    .line 123
    invoke-direct {p0, p2, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->D(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method
