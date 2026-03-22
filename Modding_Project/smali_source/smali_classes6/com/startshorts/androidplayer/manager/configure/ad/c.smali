.class public final Lcom/startshorts/androidplayer/manager/configure/ad/c;
.super Ljava/lang/Object;
.source "AdActionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/configure/ad/c$a;,
        Lcom/startshorts/androidplayer/manager/configure/ad/c$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdActionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdActionManager.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdActionManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,454:1\n1#2:455\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/configure/ad/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lcom/startshorts/androidplayer/manager/configure/ad/c$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lcom/startshorts/androidplayer/manager/configure/ad/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string/jumbo v2, "switch_tab"

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v2, "exit_immersion_page"

    .line 25
    .line 26
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string/jumbo v2, "watch_continuous"

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->b:Ljava/util/Map;

    .line 36
    .line 37
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/ad/c$b;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c$b;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->c:Lcom/startshorts/androidplayer/manager/configure/ad/c$b;

    .line 43
    .line 44
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/ad/c$a;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c$a;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->d:Lcom/startshorts/androidplayer/manager/configure/ad/c$a;

    .line 50
    .line 51
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

.method public static final synthetic a(Lcom/startshorts/androidplayer/manager/configure/ad/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final b()V
    .locals 1

    .line 1
    const-string v0, "exit_immersion_page"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final d(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "addInSceneCount("

    .line 2
    .line 3
    const-string v1, "AdActionManager"

    .line 4
    .line 5
    :try_start_0
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->p(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v4, ") failed -> disable"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catch_0
    move-exception v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string/jumbo v2, "watch_continuous"

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    const-string v2, "home_reward"

    .line 55
    .line 56
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/ad/b;->d:Lcom/startshorts/androidplayer/manager/configure/ad/b$a;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/configure/ad/b$a;->e()Lcom/startshorts/androidplayer/manager/configure/ad/b;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-nez v2, :cond_1

    .line 69
    .line 70
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, ") failed -> getConsumable() == null"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/ad/c;->b:Ljava/util/Map;

    .line 97
    .line 98
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-nez v3, :cond_2

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :cond_2
    check-cast v3, Ljava/lang/Number;

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 125
    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v5, ") -> count="

    .line 138
    .line 139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v2, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :goto_0
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 154
    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string p1, ") exception -> "

    .line 167
    .line 168
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v3, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :goto_1
    return-void
.end method

.method private final e()V
    .locals 1

    .line 1
    const-string/jumbo v0, "switch_tab"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->d(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final k(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "immersion_switch_episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lud/a;->a:Lud/a;

    .line 11
    .line 12
    invoke-virtual {p1}, Lud/a;->a()Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;->getAdConfig()Lcom/startshorts/androidplayer/bean/ad/AdConfig;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_6

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/AdConfig;->getFreeEpisodeInt()Lcom/startshorts/androidplayer/bean/ad/FreeEpisodeInt;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_6

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/FreeEpisodeInt;->isEnableShow()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    const-string v0, "exit_immersion_page"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    sget-object p1, Lud/a;->a:Lud/a;

    .line 45
    .line 46
    invoke-virtual {p1}, Lud/a;->a()Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_6

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;->getAdConfig()Lcom/startshorts/androidplayer/bean/ad/AdConfig;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_6

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/AdConfig;->getBackHomeInt()Lcom/startshorts/androidplayer/bean/ad/BackHomeInt;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_6

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/ad/BackHomeInt;->isEnableShow()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->D0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isTestGroup()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const-string v2, "AdActionManager"

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v4, "isInterstitialSceneEnable -> scene = "

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, ", adInterstitialClose is enable"

    .line 100
    .line 101
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return v1

    .line 112
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/a;->a:Lcom/startshorts/androidplayer/manager/configure/ad/a;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->p(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_3

    .line 123
    .line 124
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 125
    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v4, "isInterstitialSceneEnable -> scene="

    .line 132
    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p1, ",enable=false."

    .line 140
    .line 141
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return v1

    .line 152
    :cond_3
    sget-object v3, Lcom/startshorts/androidplayer/manager/configure/ad/c;->b:Ljava/util/Map;

    .line 153
    .line 154
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    check-cast v3, Ljava/lang/Integer;

    .line 159
    .line 160
    if-eqz v3, :cond_4

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    goto :goto_0

    .line 167
    :cond_4
    move v3, v1

    .line 168
    :goto_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/a;->h()Lcom/startshorts/androidplayer/manager/configure/ad/a$a;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/configure/ad/a$a;->o(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-lt v3, v0, :cond_5

    .line 177
    .line 178
    const/4 v1, 0x1

    .line 179
    :cond_5
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 180
    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v6, "isInterstitialSceneEnable="

    .line 187
    .line 188
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const/16 v6, 0x28

    .line 195
    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v3, ">="

    .line 203
    .line 204
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v0, "),scene="

    .line 211
    .line 212
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {v4, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_6
    :goto_1
    return v1
.end method

.method private final l()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/b;->d:Lcom/startshorts/androidplayer/manager/configure/ad/b$a;

    .line 2
    .line 3
    const-string v1, "enter_paid_point_unpaid"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/b$a;->g(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic p(Lcom/startshorts/androidplayer/manager/configure/ad/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;JJLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 12

    .line 1
    and-int/lit8 v0, p10, 0x10

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    move-wide v7, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide/from16 v7, p5

    .line 10
    .line 11
    :goto_0
    and-int/lit8 v0, p10, 0x20

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-wide/16 v0, 0x9c4

    .line 16
    .line 17
    move-wide v9, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-wide/from16 v9, p7

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v0, p10, 0x40

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    move-object v11, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move-object/from16 v11, p9

    .line 29
    .line 30
    :goto_2
    move-object v2, p0

    .line 31
    move-object v3, p1

    .line 32
    move-object v4, p2

    .line 33
    move-object v5, p3

    .line 34
    move-object/from16 v6, p4

    .line 35
    .line 36
    invoke-virtual/range {v2 .. v11}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->o(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;JJLkotlin/jvm/functions/Function1;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0
.end method

.method public static synthetic u(Lcom/startshorts/androidplayer/manager/configure/ad/c;Ljava/lang/String;Landroid/app/Activity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v6, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v6, p4

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x10

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v7, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v7, p5

    .line 16
    :goto_1
    and-int/lit8 v0, p7, 0x20

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    move-object v8, v1

    .line 21
    goto :goto_2

    .line 22
    :cond_2
    move-object v8, p6

    .line 23
    :goto_2
    move-object v2, p0

    .line 24
    move-object v3, p1

    .line 25
    move-object v4, p2

    .line 26
    move-object v5, p3

    .line 27
    invoke-virtual/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->t(Ljava/lang/String;Landroid/app/Activity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public static synthetic w(Lcom/startshorts/androidplayer/manager/configure/ad/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 17

    .line 1
    move/from16 v0, p14

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v7, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v7, p4

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v9, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v9, p6

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v1, v0, 0x40

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    move-object v10, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v10, p7

    .line 27
    .line 28
    :goto_2
    and-int/lit16 v1, v0, 0x80

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    const-wide/16 v3, 0x5dc

    .line 33
    .line 34
    move-wide v11, v3

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move-wide/from16 v11, p8

    .line 37
    .line 38
    :goto_3
    and-int/lit16 v1, v0, 0x100

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    const-wide/16 v3, 0x9c4

    .line 43
    .line 44
    move-wide v13, v3

    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move-wide/from16 v13, p10

    .line 47
    .line 48
    :goto_4
    and-int/lit16 v1, v0, 0x200

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    move v15, v1

    .line 54
    goto :goto_5

    .line 55
    :cond_5
    move/from16 v15, p12

    .line 56
    .line 57
    :goto_5
    and-int/lit16 v0, v0, 0x400

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    move-object/from16 v16, v2

    .line 62
    .line 63
    goto :goto_6

    .line 64
    :cond_6
    move-object/from16 v16, p13

    .line 65
    .line 66
    :goto_6
    move-object/from16 v3, p0

    .line 67
    .line 68
    move-object/from16 v4, p1

    .line 69
    .line 70
    move-object/from16 v5, p2

    .line 71
    .line 72
    move-object/from16 v6, p3

    .line 73
    .line 74
    move/from16 v8, p5

    .line 75
    .line 76
    invoke-virtual/range {v3 .. v16}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->v(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    return v0
.end method

.method private final x()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->x0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method


# virtual methods
.method public final c()V
    .locals 1

    .line 1
    const-string v0, "home_reward"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    const-string/jumbo v0, "watch_continuous"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->d(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "clearInSceneCount -> scene="

    .line 2
    .line 3
    const-string v1, "AdActionManager"

    .line 4
    .line 5
    const-string v2, "scene"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/ad/c;->b:Ljava/util/Map;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v2

    .line 42
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, ",e:"

    .line 56
    .line 57
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v3, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public final h()Lcom/startshorts/androidplayer/manager/configure/ad/c$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->d:Lcom/startshorts/androidplayer/manager/configure/ad/c$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lcom/startshorts/androidplayer/manager/configure/ad/c$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->c:Lcom/startshorts/androidplayer/manager/configure/ad/c$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    const-string/jumbo v0, "watch_continuous"

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->k(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final m()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/b;->d:Lcom/startshorts/androidplayer/manager/configure/ad/b$a;

    .line 8
    .line 9
    const-string v1, "exit_from_immerse_unpaid"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/b$a;->g(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 16
    .line 17
    const-string v1, "AdActionManager"

    .line 18
    .line 19
    const-string v2, "onExitImmersion no increment. case : paid=true "

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/b;->d:Lcom/startshorts/androidplayer/manager/configure/ad/b$a;

    .line 8
    .line 9
    const-string/jumbo v1, "unpaid_on_watch_ad_earn_bonus"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/b$a;->g(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final o(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;JJLkotlin/jvm/functions/Function1;)Z
    .locals 20
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "JJ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v15, p3

    .line 2
    .line 3
    const-string v13, "AdActionManager"

    .line 4
    .line 5
    const-string v0, "activity"

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v14, "scene"

    .line 13
    .line 14
    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 18
    .line 19
    const/16 v16, 0x1d8

    .line 20
    .line 21
    const/16 v17, 0x0

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    move-object/from16 v2, p1

    .line 29
    .line 30
    move-object/from16 v3, p2

    .line 31
    .line 32
    move-object/from16 v4, p3

    .line 33
    .line 34
    move-object/from16 v7, p4

    .line 35
    .line 36
    move-wide/from16 v11, p5

    .line 37
    .line 38
    move-object/from16 v18, v13

    .line 39
    .line 40
    move-object/from16 v19, v14

    .line 41
    .line 42
    move-wide/from16 v13, p7

    .line 43
    .line 44
    move-object/from16 v15, p9

    .line 45
    .line 46
    :try_start_1
    invoke-static/range {v1 .. v17}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->k0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;IILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 50
    const-string/jumbo v1, "showFullScreenNativeScene("

    .line 51
    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    :try_start_2
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    .line 64
    .line 65
    move-object/from16 v4, p3

    .line 66
    .line 67
    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ") succeed -> useFullScreenNativeAd(true),clearInSceneCount"

    .line 71
    .line 72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 79
    move-object/from16 v3, v18

    .line 80
    .line 81
    :try_start_4
    invoke-virtual {v2, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 85
    .line 86
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->g(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :goto_0
    move-object/from16 v2, p9

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :catch_1
    move-exception v0

    .line 95
    :goto_1
    move-object/from16 v3, v18

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_2
    move-exception v0

    .line 99
    move-object/from16 v4, p3

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_0
    move-object/from16 v4, p3

    .line 103
    .line 104
    move-object/from16 v2, p9

    .line 105
    .line 106
    move-object/from16 v3, v18

    .line 107
    .line 108
    if-eqz v2, :cond_1

    .line 109
    .line 110
    :try_start_5
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-interface {v2, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catch_3
    move-exception v0

    .line 117
    goto :goto_4

    .line 118
    :cond_1
    :goto_2
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 119
    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, ") failed"

    .line 132
    .line 133
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v5, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 141
    .line 142
    .line 143
    :goto_3
    return v0

    .line 144
    :catch_4
    move-exception v0

    .line 145
    move-object/from16 v4, p3

    .line 146
    .line 147
    move-object/from16 v2, p9

    .line 148
    .line 149
    move-object/from16 v3, v18

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :catch_5
    move-exception v0

    .line 153
    move-object/from16 v2, p9

    .line 154
    .line 155
    move-object v3, v13

    .line 156
    move-object/from16 v19, v14

    .line 157
    .line 158
    move-object v4, v15

    .line 159
    :goto_4
    if-eqz v2, :cond_2

    .line 160
    .line 161
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 167
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string/jumbo v5, "showFullScreenNativeScene failed -> useFullScreenNativeAd(true),scene="

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v5, ",error="

    .line 183
    .line 184
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const/16 v5, 0x2e

    .line 195
    .line 196
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 207
    .line 208
    new-instance v2, Landroid/os/Bundle;

    .line 209
    .line 210
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    const-string v3, "ad_error_msg"

    .line 222
    .line 223
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    move-object/from16 v3, v19

    .line 227
    .line 228
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 232
    .line 233
    const/4 v0, 0x4

    .line 234
    const/4 v3, 0x0

    .line 235
    const-string v4, "ad_show_error"

    .line 236
    .line 237
    const-wide/16 v5, 0x0

    .line 238
    .line 239
    move-object/from16 p1, v1

    .line 240
    .line 241
    move-object/from16 p2, v4

    .line 242
    .line 243
    move-object/from16 p3, v2

    .line 244
    .line 245
    move-wide/from16 p4, v5

    .line 246
    .line 247
    move/from16 p6, v0

    .line 248
    .line 249
    move-object/from16 p7, v3

    .line 250
    .line 251
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    const/4 v0, 0x0

    .line 255
    return v0
.end method

.method public final q(Ljava/lang/String;Landroid/app/Activity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)Z
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    move-object v3, p2

    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/16 v11, 0x30

    .line 8
    .line 9
    const/4 v12, 0x0

    .line 10
    const-string v4, "immersion_native"

    .line 11
    .line 12
    const-wide/16 v6, 0x0

    .line 13
    .line 14
    const-wide/16 v8, 0x0

    .line 15
    .line 16
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object/from16 v5, p3

    .line 19
    .line 20
    move-object/from16 v10, p4

    .line 21
    .line 22
    invoke-static/range {v1 .. v12}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->p(Lcom/startshorts/androidplayer/manager/configure/ad/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;JJLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public final r(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->b()V

    .line 9
    .line 10
    .line 11
    move-object/from16 v0, p2

    .line 12
    .line 13
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    const-string v1, "AdActionManager"

    .line 20
    .line 21
    const-string/jumbo v2, "showInterstitialInExitImmersionPageScene -> activity is not MainActivity"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    return v0

    .line 29
    :cond_0
    const/16 v15, 0x7e8

    .line 30
    .line 31
    const/16 v16, 0x0

    .line 32
    .line 33
    const-string v4, "exit_immersion_page"

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-wide/16 v9, 0x0

    .line 40
    .line 41
    const-wide/16 v11, 0x0

    .line 42
    .line 43
    const/4 v13, 0x0

    .line 44
    const/4 v14, 0x0

    .line 45
    move-object/from16 v1, p0

    .line 46
    .line 47
    move-object/from16 v2, p1

    .line 48
    .line 49
    move-object/from16 v3, p2

    .line 50
    .line 51
    invoke-static/range {v1 .. v16}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->w(Lcom/startshorts/androidplayer/manager/configure/ad/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    return v0
.end method

.method public final s(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "activity"

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->e()V

    .line 16
    .line 17
    .line 18
    const/16 v15, 0x7e8

    .line 19
    .line 20
    const/16 v16, 0x0

    .line 21
    .line 22
    const-string/jumbo v4, "switch_tab"

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const-wide/16 v9, 0x0

    .line 30
    .line 31
    const-wide/16 v11, 0x0

    .line 32
    .line 33
    const/4 v13, 0x0

    .line 34
    const/4 v14, 0x0

    .line 35
    move-object/from16 v1, p0

    .line 36
    .line 37
    invoke-static/range {v1 .. v16}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->w(Lcom/startshorts/androidplayer/manager/configure/ad/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0
.end method

.method public final t(Ljava/lang/String;Landroid/app/Activity;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Z
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v15, 0x380

    .line 9
    .line 10
    const/16 v16, 0x0

    .line 11
    .line 12
    const-string/jumbo v4, "watch_continuous"

    .line 13
    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    const-wide/16 v9, 0x0

    .line 17
    .line 18
    const-wide/16 v11, 0x0

    .line 19
    .line 20
    const/4 v13, 0x0

    .line 21
    move-object/from16 v1, p0

    .line 22
    .line 23
    move-object/from16 v2, p1

    .line 24
    .line 25
    move-object/from16 v5, p3

    .line 26
    .line 27
    move-object/from16 v7, p4

    .line 28
    .line 29
    move-object/from16 v8, p5

    .line 30
    .line 31
    move-object/from16 v14, p6

    .line 32
    .line 33
    invoke-static/range {v1 .. v16}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->w(Lcom/startshorts/androidplayer/manager/configure/ad/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public final v(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;)Z
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;JJZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v14, p13

    .line 4
    .line 5
    const-string v15, "AdActionManager"

    .line 6
    .line 7
    const-string v1, "_scene"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    move-object/from16 v13, p0

    .line 13
    .line 14
    invoke-direct {v13, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->k(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v16, 0x0

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    if-eqz v14, :cond_0

    .line 23
    .line 24
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-interface {v14, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    return v16

    .line 30
    :cond_1
    const-string v1, "immersion_switch_episode"

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string/jumbo v2, "watch_continuous"

    .line 37
    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v12, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    move-object v12, v2

    .line 51
    :goto_1
    :try_start_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .line 53
    move-object/from16 v1, p1

    .line 54
    .line 55
    move-object/from16 v2, p2

    .line 56
    .line 57
    move-object v3, v12

    .line 58
    move-object/from16 v4, p4

    .line 59
    .line 60
    move/from16 v5, p5

    .line 61
    .line 62
    move-object/from16 v6, p6

    .line 63
    .line 64
    move-object/from16 v7, p7

    .line 65
    .line 66
    move-wide/from16 v8, p8

    .line 67
    .line 68
    move-wide/from16 v10, p10

    .line 69
    .line 70
    move-object v14, v12

    .line 71
    move/from16 v12, p12

    .line 72
    .line 73
    move-object/from16 v13, p13

    .line 74
    .line 75
    :try_start_1
    invoke-virtual/range {v0 .. v13}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->l0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;)Z

    .line 76
    .line 77
    .line 78
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    const-string/jumbo v1, "showInterstitialScene("

    .line 80
    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    :try_start_2
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ") succeed -> useFullScreenNativeAd(false),clearInSceneCount"

    .line 98
    .line 99
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v2, v15, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 110
    .line 111
    invoke-virtual {v1, v14}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->g(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :catch_0
    move-exception v0

    .line 116
    :goto_2
    move-object/from16 v1, p13

    .line 117
    .line 118
    move-object v2, v14

    .line 119
    goto :goto_4

    .line 120
    :cond_4
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 121
    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ") failed"

    .line 134
    .line 135
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v2, v15, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .line 144
    .line 145
    :goto_3
    return v0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    move-object v14, v12

    .line 148
    goto :goto_2

    .line 149
    :goto_4
    if-eqz v1, :cond_5

    .line 150
    .line 151
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    :cond_5
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 157
    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string/jumbo v4, "showInterstitialScene failed -> useFullScreenNativeAd(false),scene="

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v4, ",error="

    .line 173
    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v1, v15, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 192
    .line 193
    new-instance v3, Landroid/os/Bundle;

    .line 194
    .line 195
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    const-string v4, "ad_error_msg"

    .line 207
    .line 208
    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string v0, "scene"

    .line 212
    .line 213
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 217
    .line 218
    const/4 v0, 0x4

    .line 219
    const/4 v2, 0x0

    .line 220
    const-string v4, "ad_show_error"

    .line 221
    .line 222
    const-wide/16 v5, 0x0

    .line 223
    .line 224
    move-object/from16 p1, v1

    .line 225
    .line 226
    move-object/from16 p2, v4

    .line 227
    .line 228
    move-object/from16 p3, v3

    .line 229
    .line 230
    move-wide/from16 p4, v5

    .line 231
    .line 232
    move/from16 p6, v0

    .line 233
    .line 234
    move-object/from16 p7, v2

    .line 235
    .line 236
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    return v16
.end method
