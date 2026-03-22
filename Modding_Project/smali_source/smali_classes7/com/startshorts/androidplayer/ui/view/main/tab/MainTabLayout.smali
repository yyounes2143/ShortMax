.class public final Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;
.super Landroid/widget/LinearLayout;
.source "MainTabLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$a;,
        Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;,
        Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMainTabLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainTabLayout.kt\ncom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,305:1\n1872#2,3:306\n*S KotlinDebug\n*F\n+ 1 MainTabLayout.kt\ncom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout\n*L\n55#1:306,3\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/tab/MainTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->c:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$a;

    .line 8
    .line 9
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

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    const/high16 p1, 0x42780000    # 62.0f

    .line 10
    .line 11
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->b:I

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->i()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final b(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/tab/MainTab;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v7, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 7
    .line 8
    sget-object v2, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->DISCOVER:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 9
    .line 10
    const/4 v5, 0x6

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, v7

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/bean/tab/MainTab;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 22
    .line 23
    sget-object v9, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 24
    .line 25
    const/4 v12, 0x6

    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    move-object v8, v1

    .line 30
    invoke-direct/range {v8 .. v13}, Lcom/startshorts/androidplayer/bean/tab/MainTab;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->q()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    new-instance v1, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 45
    .line 46
    sget-object v3, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->REWARDS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 47
    .line 48
    const/4 v6, 0x6

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    const/4 v5, 0x0

    .line 52
    move-object v2, v1

    .line 53
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/tab/MainTab;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    if-eqz v5, :cond_1

    .line 67
    .line 68
    invoke-virtual {v1, v5}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->n(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/4 v1, 0x0

    .line 77
    :goto_0
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v4, "createTabList -> resourceReady("

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const/16 v4, 0x29

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string v4, "MainTabLayout"

    .line 102
    .line 103
    invoke-virtual {v2, v4, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    new-instance v1, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 109
    .line 110
    sget-object v3, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->ACT:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 111
    .line 112
    const/4 v6, 0x2

    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    move-object v2, v1

    .line 116
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/tab/MainTab;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_1
    new-instance v1, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 123
    .line 124
    sget-object v9, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->MY_LIST:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 125
    .line 126
    const/4 v12, 0x6

    .line 127
    const/4 v13, 0x0

    .line 128
    const/4 v10, 0x0

    .line 129
    const/4 v11, 0x0

    .line 130
    move-object v8, v1

    .line 131
    invoke-direct/range {v8 .. v13}, Lcom/startshorts/androidplayer/bean/tab/MainTab;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    new-instance v1, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 138
    .line 139
    sget-object v3, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->PROFILE:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 140
    .line 141
    const/4 v6, 0x6

    .line 142
    const/4 v7, 0x0

    .line 143
    const/4 v4, 0x0

    .line 144
    const/4 v5, 0x0

    .line 145
    move-object v2, v1

    .line 146
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/tab/MainTab;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Lcom/startshorts/androidplayer/bean/tab/MainTab$State;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_4

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    move-object v3, v2

    .line 167
    check-cast v3, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_3

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_4
    const/4 v2, 0x0

    .line 185
    :goto_2
    check-cast v2, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 186
    .line 187
    if-nez v2, :cond_5

    .line 188
    .line 189
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    move-object v2, p1

    .line 194
    check-cast v2, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 195
    .line 196
    :cond_5
    sget-object p1, Lcom/startshorts/androidplayer/bean/tab/MainTab$State;->SELECTED:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 197
    .line 198
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->setState(Lcom/startshorts/androidplayer/bean/tab/MainTab$State;)V

    .line 199
    .line 200
    .line 201
    return-object v0
.end method

.method private final c(Lcom/startshorts/androidplayer/bean/tab/MainTab;)Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$c;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    aget v0, v1, v0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const-string v2, "getContext(...)"

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/main/tab/ActMainTabView;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/ActMainTabView;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/NormalMainTabView;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;

    .line 44
    .line 45
    invoke-direct {v1, p1, v0}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$d;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab;Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method private final h()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "getContext(...)"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/main/tab/b;

    .line 20
    .line 21
    invoke-direct {v3}, Lcom/startshorts/androidplayer/ui/view/main/tab/b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, v2, v3}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;-><init>(Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private static final i()Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/RefreshDiscoverFragmentEvent;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshDiscoverFragmentEvent;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final d(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)Landroid/view/ViewGroup;
    .locals 5
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    const/4 v2, 0x0

    .line 12
    if-ge v1, v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    instance-of v4, v3, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    move-object v4, v3

    .line 23
    check-cast v4, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 24
    .line 25
    invoke-interface {v4}, Lcom/startshorts/androidplayer/ui/view/main/tab/a;->getTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    move-object v4, v2

    .line 37
    :goto_1
    if-ne v4, p1, :cond_2

    .line 38
    .line 39
    instance-of p1, v3, Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    move-object v2, v3

    .line 44
    check-cast v2, Landroid/view/ViewGroup;

    .line 45
    .line 46
    :cond_1
    return-object v2

    .line 47
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return-object v2
.end method

.method public final e(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)I
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v0

    .line 11
    move v4, v3

    .line 12
    :goto_0
    if-ge v2, v1, :cond_5

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    instance-of v6, v5, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 19
    .line 20
    if-eqz v6, :cond_4

    .line 21
    .line 22
    check-cast v5, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 23
    .line 24
    invoke-interface {v5}, Lcom/startshorts/androidplayer/ui/view/main/tab/a;->getTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const/4 v7, 0x0

    .line 29
    if-eqz v6, :cond_1

    .line 30
    .line 31
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v6, v7

    .line 37
    :goto_1
    sget-object v8, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->ACT:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 38
    .line 39
    if-ne v6, v8, :cond_2

    .line 40
    .line 41
    move v3, v2

    .line 42
    :cond_2
    invoke-interface {v5}, Lcom/startshorts/androidplayer/ui/view/main/tab/a;->getTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    :cond_3
    if-ne v7, p1, :cond_4

    .line 53
    .line 54
    move v4, v2

    .line 55
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->ACT:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 59
    .line 60
    if-ne p1, v1, :cond_6

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_6
    if-ne v3, v0, :cond_7

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_7
    if-le v4, v3, :cond_8

    .line 67
    .line 68
    add-int/lit8 v3, v4, -0x1

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_8
    :goto_2
    move v3, v4

    .line 72
    :goto_3
    return v3
.end method

.method public final f(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)I
    .locals 5
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    instance-of v4, v3, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 17
    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 21
    .line 22
    invoke-interface {v3}, Lcom/startshorts/androidplayer/ui/view/main/tab/a;->getTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v3, 0x0

    .line 34
    :goto_1
    if-ne v3, p1, :cond_2

    .line 35
    .line 36
    move v0, v2

    .line 37
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    return v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "defaultType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->b(Ljava/lang/String;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-float v0, v0

    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    mul-float/2addr v0, v1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    div-float/2addr v0, v1

    .line 31
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->b:I

    .line 36
    .line 37
    check-cast p1, Ljava/lang/Iterable;

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    add-int/lit8 v2, v0, 0x1

    .line 55
    .line 56
    if-gez v0, :cond_0

    .line 57
    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 59
    .line 60
    .line 61
    :cond_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 62
    .line 63
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->c(Lcom/startshorts/androidplayer/bean/tab/MainTab;)Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    .line 69
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->b:I

    .line 70
    .line 71
    const/4 v5, -0x1

    .line 72
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/BaseMainTabView;->x(Lcom/startshorts/androidplayer/bean/tab/MainTab;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->REWARDS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 86
    .line 87
    if-ne v0, v1, :cond_1

    .line 88
    .line 89
    sget-object v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->o()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v1, v0}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->l(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V

    .line 99
    .line 100
    .line 101
    :cond_1
    move v0, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->h()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final getTabLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/tab/MainTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->a:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final getTabViewWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final j(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->ACT:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, -0x1

    .line 18
    move v4, v1

    .line 19
    move-object v6, v2

    .line 20
    move v5, v3

    .line 21
    :goto_0
    if-ge v4, v0, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    instance-of v8, v7, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 28
    .line 29
    if-eqz v8, :cond_3

    .line 30
    .line 31
    check-cast v7, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 32
    .line 33
    invoke-interface {v7}, Lcom/startshorts/androidplayer/ui/view/main/tab/a;->getTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/tab/MainTab;->getType()Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v8, v2

    .line 45
    :goto_1
    if-ne v8, p1, :cond_2

    .line 46
    .line 47
    invoke-interface {v7}, Lcom/startshorts/androidplayer/ui/view/main/tab/a;->getTab()Lcom/startshorts/androidplayer/bean/tab/MainTab;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    sget-object v5, Lcom/startshorts/androidplayer/bean/tab/MainTab$State;->SELECTED:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 52
    .line 53
    invoke-interface {v7, v5}, Lcom/startshorts/androidplayer/ui/view/main/tab/a;->o(Lcom/startshorts/androidplayer/bean/tab/MainTab$State;)V

    .line 54
    .line 55
    .line 56
    move v5, v4

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    sget-object v8, Lcom/startshorts/androidplayer/bean/tab/MainTab$State;->UNSELECTED:Lcom/startshorts/androidplayer/bean/tab/MainTab$State;

    .line 59
    .line 60
    invoke-interface {v7, v8}, Lcom/startshorts/androidplayer/ui/view/main/tab/a;->o(Lcom/startshorts/androidplayer/bean/tab/MainTab$State;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    if-eq v5, v3, :cond_5

    .line 67
    .line 68
    if-eqz v6, :cond_5

    .line 69
    .line 70
    invoke-virtual {p0, p1, v1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->l(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V

    .line 71
    .line 72
    .line 73
    :cond_5
    return-void
.end method

.method public final k(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "currentType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "targetType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->d(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)Landroid/view/ViewGroup;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    instance-of v0, p2, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 23
    .line 24
    invoke-interface {p2, p1, p3}, Lcom/startshorts/androidplayer/ui/view/main/tab/a;->c(Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final l(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;Z)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;->d(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;)Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/main/tab/a;

    .line 18
    .line 19
    invoke-interface {p1, p2}, Lcom/startshorts/androidplayer/ui/view/main/tab/a;->j(Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
