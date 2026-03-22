.class public final Lre/a;
.super Ljava/lang/Object;
.source "PlayerJsonConfigure.kt"

# interfaces
.implements Lme/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lme/b<",
        "Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lre/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static final c:Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lre/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lre/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lre/a;->a:Lre/a;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v7, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;

    .line 14
    .line 15
    const/4 v5, 0x5

    .line 16
    const/4 v6, 0x4

    .line 17
    const-string v2, "480p"

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    const/16 v4, 0x400

    .line 21
    .line 22
    move-object v1, v7

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;-><init>(Ljava/lang/String;IIII)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;

    .line 30
    .line 31
    const/4 v12, 0x5

    .line 32
    const/4 v13, 0x4

    .line 33
    const-string v9, "720p"

    .line 34
    .line 35
    const/4 v10, 0x4

    .line 36
    const/16 v11, 0x578

    .line 37
    .line 38
    move-object v8, v1

    .line 39
    invoke-direct/range {v8 .. v13}, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;-><init>(Ljava/lang/String;IIII)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;

    .line 46
    .line 47
    const/4 v6, 0x5

    .line 48
    const/4 v7, 0x4

    .line 49
    const-string v3, "1080p"

    .line 50
    .line 51
    const/4 v4, 0x4

    .line 52
    const/16 v5, 0x800

    .line 53
    .line 54
    move-object v2, v1

    .line 55
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/bean/configure/PlayerPreloadConfig;-><init>(Ljava/lang/String;IIII)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;-><init>(Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    sput-object v1, Lre/a;->c:Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;

    .line 67
    .line 68
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

.method private final f(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "PlayerJsonConfigure"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    const-string/jumbo v0, "update failed -> json is blank"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    :try_start_0
    const-class v0, Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;

    .line 20
    .line 21
    invoke-static {p1, v0}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;->getPreloadConfigs()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/Collection;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lre/a;->c:Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;->getPreloadConfigs()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;->setPreloadConfigs(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 57
    goto :goto_2

    .line 58
    :goto_1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v4, "update failed "

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    invoke-direct {p0, p1}, Lre/a;->f(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

    .line 2
    .line 3
    const-string v1, "player_config_android"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0, p1}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->h(Ljava/lang/String;Lme/b;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-ne p1, v0, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method

.method public c(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lre/a;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lre/a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public g()Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lre/a;->c:Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lre/a;->g()Lcom/startshorts/androidplayer/bean/configure/PlayerConfigController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
