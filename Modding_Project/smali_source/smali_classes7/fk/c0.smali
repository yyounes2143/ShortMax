.class public final Lfk/c0;
.super Ljava/lang/Object;
.source "ShortCutsUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfk/c0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortCutsUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortCutsUtil.kt\ncom/startshorts/androidplayer/utils/ShortCutsUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1863#2:61\n1864#2:63\n1#3:62\n*S KotlinDebug\n*F\n+ 1 ShortCutsUtil.kt\ncom/startshorts/androidplayer/utils/ShortCutsUtil\n*L\n35#1:61\n35#1:63\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lfk/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfk/c0$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lfk/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lfk/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfk/c0;->a:Lfk/c0;

    .line 7
    .line 8
    const-string v0, "continueWatching"

    .line 9
    .line 10
    sput-object v0, Lfk/c0;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "moreDrama"

    .line 13
    .line 14
    sput-object v1, Lfk/c0;->c:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "viewHistory"

    .line 17
    .line 18
    sput-object v2, Lfk/c0;->d:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "freeBonus"

    .line 21
    .line 22
    sput-object v3, Lfk/c0;->e:Ljava/lang/String;

    .line 23
    .line 24
    const-string v4, "allFree"

    .line 25
    .line 26
    sput-object v4, Lfk/c0;->f:Ljava/lang/String;

    .line 27
    .line 28
    const-string v5, "mayAlsoLike"

    .line 29
    .line 30
    sput-object v5, Lfk/c0;->g:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v6, Lfk/c0$a;

    .line 33
    .line 34
    sget v7, Lcom/startshorts/androidplayer/R$drawable;->ic_shortcut_play_video:I

    .line 35
    .line 36
    sget v8, Lcom/startshorts/androidplayer/R$string;->continue_watching:I

    .line 37
    .line 38
    invoke-direct {v6, v0, v7, v8}, Lfk/c0$a;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lfk/c0$a;

    .line 42
    .line 43
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_shortcut_more:I

    .line 44
    .line 45
    sget v8, Lcom/startshorts/androidplayer/R$string;->shortcuts_more_drama:I

    .line 46
    .line 47
    invoke-direct {v7, v1, v0, v8}, Lfk/c0$a;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    new-instance v8, Lfk/c0$a;

    .line 51
    .line 52
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_shortcut_play_history:I

    .line 53
    .line 54
    sget v1, Lcom/startshorts/androidplayer/R$string;->shortcuts_view_history:I

    .line 55
    .line 56
    invoke-direct {v8, v2, v0, v1}, Lfk/c0$a;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    new-instance v9, Lfk/c0$a;

    .line 60
    .line 61
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_shortcut_free_bonus:I

    .line 62
    .line 63
    sget v1, Lcom/startshorts/androidplayer/R$string;->shortcuts_free_bonus:I

    .line 64
    .line 65
    invoke-direct {v9, v3, v0, v1}, Lfk/c0$a;-><init>(Ljava/lang/String;II)V

    .line 66
    .line 67
    .line 68
    new-instance v10, Lfk/c0$a;

    .line 69
    .line 70
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_shortcut_all_free:I

    .line 71
    .line 72
    sget v1, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_privilege_5_desc:I

    .line 73
    .line 74
    invoke-direct {v10, v4, v0, v1}, Lfk/c0$a;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    new-instance v11, Lfk/c0$a;

    .line 78
    .line 79
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_shortcut_may_also_like:I

    .line 80
    .line 81
    sget v1, Lcom/startshorts/androidplayer/R$string;->shortcuts_may_also_like:I

    .line 82
    .line 83
    invoke-direct {v11, v5, v0, v1}, Lfk/c0$a;-><init>(Ljava/lang/String;II)V

    .line 84
    .line 85
    .line 86
    filled-new-array/range {v6 .. v11}, [Lfk/c0$a;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lfk/c0;->h:Ljava/util/List;

    .line 95
    .line 96
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lfk/c0;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lfk/c0;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lfk/c0;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lfk/c0;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lfk/c0;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lfk/c0;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
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
    const-string v0, "shortcutList"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    check-cast p2, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    sget-object v2, Lfk/c0;->h:Ljava/util/List;

    .line 35
    .line 36
    check-cast v2, Ljava/lang/Iterable;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    move-object v4, v3

    .line 53
    check-cast v4, Lfk/c0$a;

    .line 54
    .line 55
    invoke-virtual {v4}, Lfk/c0$a;->c()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v3, 0x0

    .line 67
    :goto_1
    check-cast v3, Lfk/c0$a;

    .line 68
    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    invoke-static {p1, v1}, Landroidx/core/content/pm/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v3}, Lfk/c0$a;->b()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-static {v2, v4}, Landroidx/core/content/pm/b;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v3}, Lfk/c0$a;->b()I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v2, v4}, Landroidx/core/content/pm/q;->a(Landroid/content/pm/ShortcutInfo$Builder;Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v3}, Lfk/c0$a;->a()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-static {p1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v2, v3}, Landroidx/core/content/pm/p;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    new-instance v3, Landroid/content/Intent;

    .line 112
    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v5, "shorttv://www.shorttv.live/shortcut?actType="

    .line 119
    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const-string v4, "android.intent.action.VIEW"

    .line 135
    .line 136
    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 137
    .line 138
    .line 139
    const-class v1, Lcom/startshorts/androidplayer/ui/activity/shortcut/ShortCutNavigatorActivity;

    .line 140
    .line 141
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v3}, Lfk/b0;->a(Landroid/content/pm/ShortcutInfo$Builder;Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1}, Landroidx/core/content/pm/n;->a(Landroid/content/pm/ShortcutInfo$Builder;)Landroid/content/pm/ShortcutInfo;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    const-string v2, "build(...)"

    .line 153
    .line 154
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_3
    invoke-static {}, Landroidx/core/content/pm/m0;->a()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, Landroidx/core/content/pm/x0;->a(Ljava/lang/Object;)Landroid/content/pm/ShortcutManager;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1, v0}, Landroidx/core/content/pm/y0;->a(Landroid/content/pm/ShortcutManager;Ljava/util/List;)Z

    .line 175
    .line 176
    .line 177
    return-void
.end method
