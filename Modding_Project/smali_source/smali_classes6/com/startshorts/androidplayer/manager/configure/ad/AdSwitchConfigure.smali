.class public final Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;
.super Ljava/lang/Object;
.source "AdSwitchConfigure.kt"

# interfaces
.implements Lme/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lme/b<",
        "Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdSwitchConfigure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdSwitchConfigure.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,127:1\n13402#2,2:128\n*S KotlinDebug\n*F\n+ 1 AdSwitchConfigure.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure\n*L\n68#1:128,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static final c:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Lme/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->c:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 15
    .line 16
    new-instance v0, Lme/a;

    .line 17
    .line 18
    invoke-direct {v0}, Lme/a;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->d:Lme/a;

    .line 22
    .line 23
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

.method public static final synthetic f()Lme/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->d:Lme/a;

    .line 2
    .line 3
    return-object v0
.end method

.method private final g()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->a:Lcom/startshorts/androidplayer/manager/ad/AdHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->h()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 11
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
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$init$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$init$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$init$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$init$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$init$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$init$1;-><init>(Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$init$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$init$1;->j:I

    .line 32
    .line 33
    const-string v3, "AdSwitchConfigure"

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object p2, Loe/e;->a:Loe/e;

    .line 56
    .line 57
    invoke-virtual {p2}, Loe/e;->e()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_3

    .line 62
    .line 63
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 64
    .line 65
    const-string p2, "init failed -> should init country tier first"

    .line 66
    .line 67
    invoke-virtual {p1, v3, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_3
    sget-object v5, Lcom/startshorts/androidplayer/bean/ad/AdScene;->APP_OPEN:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 77
    .line 78
    sget-object v6, Lcom/startshorts/androidplayer/bean/ad/AdScene;->REWARD:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 79
    .line 80
    sget-object v7, Lcom/startshorts/androidplayer/bean/ad/AdScene;->INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 81
    .line 82
    sget-object v8, Lcom/startshorts/androidplayer/bean/ad/AdScene;->BANNER:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 83
    .line 84
    sget-object v9, Lcom/startshorts/androidplayer/bean/ad/AdScene;->NATIVE:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 85
    .line 86
    sget-object v10, Lcom/startshorts/androidplayer/bean/ad/AdScene;->MEDIA_VIDEO:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 87
    .line 88
    filled-new-array/range {v5 .. v10}, [Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iput v4, v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$init$1;->j:I

    .line 93
    .line 94
    invoke-virtual {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->i(Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/ad/AdScene;Lrs/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    if-ne p2, v1, :cond_4

    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_4
    :goto_1
    move-object p1, p2

    .line 102
    check-cast p1, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v2, "init -> succeed="

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v0, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-object p2
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p0, p1}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->h(Ljava/lang/String;Lme/b;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method

.method public c(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public d(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Landroid/content/Context;
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
            "Landroid/content/Context;",
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1, p0, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->g(Landroid/content/Context;Ljava/lang/String;Lme/b;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public h(Lrs/c;)Ljava/lang/Object;
    .locals 1
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
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->d:Lme/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lme/a;->e(Lme/b;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method

.method public i(Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/ad/AdScene;Lrs/c;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Lcom/startshorts/androidplayer/bean/ad/AdScene;
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
            "Ljava/lang/String;",
            "[",
            "Lcom/startshorts/androidplayer/bean/ad/AdScene;",
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
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const-string v0, "AdSwitchConfigure"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string/jumbo p3, "update failed -> "

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->g()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p3, " json is blank"

    .line 31
    .line 32
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_0
    :try_start_0
    sget-object p3, Loe/e;->a:Loe/e;

    .line 48
    .line 49
    invoke-virtual {p3}, Loe/e;->g()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    new-instance v2, Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->d:Lme/a;

    .line 63
    .line 64
    invoke-virtual {v2, p1}, Lme/a;->b(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    sget-object p1, Lud/b;->a:Lud/b;

    .line 74
    .line 75
    invoke-virtual {p1}, Lud/b;->M0()J

    .line 76
    .line 77
    .line 78
    move-result-wide v6

    .line 79
    sub-long v6, v2, v6

    .line 80
    .line 81
    sget-object v3, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

    .line 82
    .line 83
    const-string v4, "AdSwitchConfigure"

    .line 84
    .line 85
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const/16 v9, 0x8

    .line 89
    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v8, 0x0

    .line 92
    invoke-static/range {v3 .. v10}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->e(Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;Ljava/lang/String;Lorg/json/JSONArray;JZILjava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    sget-object v2, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->c:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 99
    .line 100
    sget-object v3, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->d:Lme/a;

    .line 101
    .line 102
    const/4 v4, 0x2

    .line 103
    const/4 v5, 0x0

    .line 104
    invoke-static {v3, p1, v1, v4, v5}, Lme/a;->d(Lme/a;Lorg/json/JSONObject;ZILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    array-length v3, p2

    .line 108
    move v4, v1

    .line 109
    :goto_0
    if-ge v4, v3, :cond_2

    .line 110
    .line 111
    aget-object v5, p2, v4

    .line 112
    .line 113
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/ad/AdScene;->getValue()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 126
    .line 127
    .line 128
    move-result-object v8

    .line 129
    invoke-interface {v8, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    sget-object v7, Lid/a;->a:Lid/a;

    .line 133
    .line 134
    invoke-virtual {v7}, Lid/a;->c()Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_1

    .line 139
    .line 140
    new-instance v7, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string/jumbo v8, "update scene -> switchKey="

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    sget-object v8, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;

    .line 152
    .line 153
    invoke-direct {v8}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->g()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const/16 v8, 0x2c

    .line 161
    .line 162
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const/16 v8, 0x3d

    .line 169
    .line 170
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/ad/AdScene;->getValue()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v5, ",activeTime="

    .line 187
    .line 188
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    sget-object v5, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->a:Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;

    .line 192
    .line 193
    invoke-virtual {v5, p1}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureUtil;->b(Lorg/json/JSONObject;)J

    .line 194
    .line 195
    .line 196
    move-result-wide v5

    .line 197
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v5, ",map="

    .line 201
    .line 202
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    sget-object v6, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 217
    .line 218
    invoke-virtual {v6, v0, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :catch_0
    move-exception p1

    .line 223
    goto :goto_2

    .line 224
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_2
    const/4 v1, 0x1

    .line 228
    goto :goto_3

    .line 229
    :goto_2
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 230
    .line 231
    new-instance p3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string/jumbo v2, "update failed "

    .line 237
    .line 238
    .line 239
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :goto_3
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    return-object p1
.end method

.method public j(Lcom/startshorts/androidplayer/bean/ad/AdScene;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/ad/AdScene;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adScene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "updateByActiveTime -> "

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "AdSwitchConfigure"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 32
    .line 33
    new-instance v6, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$updateByActiveTime$1;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {v6, p1, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$updateByActiveTime$1;-><init>(Lcom/startshorts/androidplayer/bean/ad/AdScene;Lrs/c;)V

    .line 37
    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    const/4 v8, 0x0

    .line 41
    const-string v4, "AdSwitchJsonConfigure updateByActiveTime"

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final k()Lkotlinx/coroutines/r;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$updateConfigure$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$updateConfigure$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "AdSwitchJsonConfigure:updateConfigure"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public l()Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->c:Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure;->l()Lcom/startshorts/androidplayer/manager/configure/ad/AdSwitchConfigure$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
