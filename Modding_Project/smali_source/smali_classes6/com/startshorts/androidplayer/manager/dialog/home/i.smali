.class public final Lcom/startshorts/androidplayer/manager/dialog/home/i;
.super Ljava/lang/Object;
.source "RewardTabGuideProcessor.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/dialog/home/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/dialog/home/i$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardTabGuideProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardTabGuideProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/RewardTabGuideProcessor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1863#2,2:146\n1863#2,2:148\n*S KotlinDebug\n*F\n+ 1 RewardTabGuideProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/RewardTabGuideProcessor\n*L\n58#1:146,2\n131#1:148,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/dialog/home/i$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/i$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/dialog/home/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/i;->a:Lcom/startshorts/androidplayer/manager/dialog/home/i$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/ui/view/guide/model/a;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lhj/a;->a:Lhj/a;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lhj/a;->a(Landroid/app/Activity;)Lij/a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/startshorts/androidplayer/manager/dialog/home/i$b;

    .line 13
    .line 14
    invoke-direct {v2, v0, p1, p3}, Lcom/startshorts/androidplayer/manager/dialog/home/i$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lij/a;->g(Ljj/a;)Lij/a;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    new-instance v1, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;

    .line 22
    .line 23
    invoke-direct {v1, p1, v0}, Lcom/startshorts/androidplayer/manager/dialog/home/i$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, v1}, Lij/a;->h(Ljj/c;)Lij/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p2, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_0

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    check-cast p3, Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 47
    .line 48
    invoke-virtual {p1, p3}, Lij/a;->a(Lcom/startshorts/androidplayer/ui/view/guide/model/a;)Lij/a;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lij/a;->i()Lcom/startshorts/androidplayer/ui/view/guide/core/a;

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/c$a;->b(Lcom/startshorts/androidplayer/manager/dialog/home/c;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public b(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/dialog/home/i;->c(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    sget-object p3, Lcom/startshorts/androidplayer/manager/dialog/home/i;->a:Lcom/startshorts/androidplayer/manager/dialog/home/i$a;

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/dialog/home/i$a;->a()Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-eqz p3, :cond_5

    .line 20
    .line 21
    sget-object p3, Lud/b;->a:Lud/b;

    .line 22
    .line 23
    invoke-virtual {p3, v0}, Lud/b;->a5(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->l0()Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    sget-object v3, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->REWARDS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 41
    .line 42
    invoke-virtual {p3, v3}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->d(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)Landroid/view/ViewGroup;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    :cond_1
    sget-object v3, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->MY_LIST:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 56
    .line 57
    invoke-virtual {p3, v3}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->d(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)Landroid/view/ViewGroup;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const/4 v4, 0x2

    .line 75
    if-ne v3, v4, :cond_4

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    move-object v4, v2

    .line 92
    check-cast v4, Landroid/view/ViewGroup;

    .line 93
    .line 94
    sget-object v2, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->h:Lcom/startshorts/androidplayer/ui/view/guide/model/a$a;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/view/guide/model/a$a;->a()Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    sget v5, Lcom/startshorts/androidplayer/R$color;->color_main_activity_tab_guide_bg:I

    .line 105
    .line 106
    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->l(I)Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    sget v3, Lcom/startshorts/androidplayer/R$layout;->view_main_activity_reward_tab_guide:I

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->m(I)Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    sget-object v5, Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;->ROUND_RECTANGLE:Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;

    .line 121
    .line 122
    sget-object v2, Lfk/z;->a:Lfk/z;

    .line 123
    .line 124
    invoke-virtual {v2}, Lfk/z;->s()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    const/16 v10, 0x20

    .line 129
    .line 130
    const/4 v11, 0x0

    .line 131
    const/4 v7, 0x0

    .line 132
    const/4 v8, 0x0

    .line 133
    const/4 v9, 0x0

    .line 134
    invoke-static/range {v3 .. v11}, Lcom/startshorts/androidplayer/ui/view/guide/model/a;->b(Lcom/startshorts/androidplayer/ui/view/guide/model/a;Landroid/view/View;Lcom/startshorts/androidplayer/ui/view/guide/model/HighLight$Shape;IILkj/a;Landroid/view/View$OnClickListener;ILjava/lang/Object;)Lcom/startshorts/androidplayer/ui/view/guide/model/a;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    invoke-direct {p0, p1, v1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/i;->d(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 143
    .line 144
    .line 145
    const/4 p1, 0x1

    .line 146
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    return-object p1

    .line 151
    :cond_4
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    return-object p1

    .line 156
    :cond_5
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    return-object p1
.end method

.method public c(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p0()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RewardTabGuideProcessor"

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;->DIALOG_REWARD_TAB_GUIDE:Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;

    .line 2
    .line 3
    return-object v0
.end method
