.class public final Lcom/startshorts/androidplayer/startup/PlayerInitializer;
.super Lcom/startshorts/androidplayer/startup/BaseInitializer;
.source "PlayerInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/startup/PlayerInitializer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/startup/BaseInitializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lcom/startshorts/androidplayer/startup/PlayerInitializer$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/startup/PlayerInitializer$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/startup/PlayerInitializer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/startup/PlayerInitializer;->b:Lcom/startshorts/androidplayer/startup/PlayerInitializer$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/BaseInitializer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/startup/PlayerInitializer;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "catchInitError -> "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseManager;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-exception p1

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method private static final h(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    sget-object p1, Lpf/a;->a:Lpf/a;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lpf/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "PlayerInitializer"

    .line 2
    .line 3
    return-object v0
.end method

.method public dependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/startup/DbInitializer;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public e(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/16 v0, 0x21

    .line 11
    .line 12
    const/4 v1, 0x6

    .line 13
    invoke-virtual {p2, v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->setGlobalConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V

    .line 17
    .line 18
    .line 19
    const/16 p2, 0x2330

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-static {p2, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 23
    .line 24
    .line 25
    const/16 p2, 0x2338

    .line 26
    .line 27
    invoke-static {p2, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 28
    .line 29
    .line 30
    const/16 p2, 0x2ee4

    .line 31
    .line 32
    invoke-static {p2, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x4

    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-static {p2, v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 38
    .line 39
    .line 40
    sget-object p2, Lmf/b;->a:Lmf/b;

    .line 41
    .line 42
    invoke-virtual {p2}, Lmf/b;->b()V

    .line 43
    .line 44
    .line 45
    new-instance p2, Llc/c$b;

    .line 46
    .line 47
    invoke-direct {p2, p1}, Llc/c$b;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, Lcf/a;->a:Lcf/a;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcf/a;->d()Ljava/io/File;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p2, v1}, Llc/c$b;->e(Ljava/lang/String;)Llc/c$b;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    const/high16 v1, 0x1f400000

    .line 65
    .line 66
    invoke-virtual {p2, v1}, Llc/c$b;->f(I)Llc/c$b;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Llc/c$b;->d()Llc/c;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    :try_start_0
    invoke-static {v0}, Lkc/a;->s(Z)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Llc/a$b;

    .line 78
    .line 79
    invoke-direct {v0}, Llc/a$b;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1}, Llc/a$b;->s(Landroid/content/Context;)Llc/a$b;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "mya"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Llc/a$b;->q(Ljava/lang/String;)Llc/a$b;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget v1, Lcom/startshorts/androidplayer/R$string;->tt_player_app_id:I

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Llc/a$b;->o(Ljava/lang/String;)Llc/a$b;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget v1, Lcom/startshorts/androidplayer/R$string;->app_name:I

    .line 103
    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Llc/a$b;->p(Ljava/lang/String;)Llc/a$b;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const-string v1, "2.18.0"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Llc/a$b;->r(Ljava/lang/String;)Llc/a$b;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sget-object v1, Lae/a;->a:Lae/a;

    .line 119
    .line 120
    invoke-virtual {v1}, Lae/a;->d()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Llc/a$b;->n(Ljava/lang/String;)Llc/a$b;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "assets:///ttplayer/license/vod.lic"

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Llc/a$b;->t(Ljava/lang/String;)Llc/a$b;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, p2}, Llc/a$b;->u(Llc/c;)Llc/a$b;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2}, Llc/a$b;->m()Llc/a;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->t1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/Boolean;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eqz v0, :cond_0

    .line 163
    .line 164
    invoke-static {p2}, Lkc/a;->j(Llc/a;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catch_0
    move-exception p2

    .line 169
    goto :goto_0

    .line 170
    :catch_1
    move-exception p2

    .line 171
    goto :goto_1

    .line 172
    :cond_0
    invoke-static {p2}, Lkc/a;->u(Llc/a;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/startup/PlayerInitializer;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/startup/PlayerInitializer;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :goto_2
    :try_start_1
    invoke-static {}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->getInstance()Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    new-instance p2, Loh/e;

    .line 196
    .line 197
    invoke-direct {p2}, Loh/e;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, p2}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;->setGenerateFileKeyCallback(Lcom/bytedance/vcloud/cacheModule/CacheSettings$IGenerateFileKeyCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :catch_2
    move-exception p1

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v0, "setGenerateFileKeyCallback exception -> "

    .line 211
    .line 212
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :goto_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/startup/PlayerInitializer;->i()V

    .line 230
    .line 231
    .line 232
    return-object p0
.end method

.method public final i()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/pandora/common/applog/AppLogWrapper;->getAppLogInstance()Lcom/bytedance/applog/IAppLogInstance;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v1, v0}, Lcom/bytedance/applog/IAppLogInstance;->setUserUniqueID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "setUserUniqueID exception -> "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    return-void
.end method
