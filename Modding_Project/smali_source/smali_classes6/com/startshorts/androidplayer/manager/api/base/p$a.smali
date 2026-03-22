.class public final Lcom/startshorts/androidplayer/manager/api/base/p$a;
.super Ljava/lang/Object;
.source "ApiUrl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/api/base/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

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

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/p$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/p$a;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/p$a;->b:Ljava/util/List;

    .line 25
    .line 26
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/q;->a:Lcom/startshorts/androidplayer/manager/api/base/q$a;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/q$a;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sput-object v1, Lcom/startshorts/androidplayer/manager/api/base/p$a;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/q$a;->b()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sput-object v1, Lcom/startshorts/androidplayer/manager/api/base/p$a;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/q$a;->c()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/p$a;->e:Ljava/lang/String;

    .line 45
    .line 46
    const-string v9, "config/getSdkDeviceConfig"

    .line 47
    .line 48
    const-string v10, "app/abtest/getAbtestParamsNew"

    .line 49
    .line 50
    const-string v1, "app/login/v3/tripartiteLogin"

    .line 51
    .line 52
    const-string v2, "app/login/loginMobile"

    .line 53
    .line 54
    const-string v3, "app/login/v4/initLogin"

    .line 55
    .line 56
    const-string v4, "app/hiAdMatch/deepLinkReport"

    .line 57
    .line 58
    const-string v5, "app/hiAppReport/lpReport"

    .line 59
    .line 60
    const-string v6, "app/eventController/appEventReportV1"

    .line 61
    .line 62
    const-string v7, "app/correction/time"

    .line 63
    .line 64
    const-string v8, "app/system/getUpgradeVersionManageInfo"

    .line 65
    .line 66
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/p$a;->f:Ljava/util/List;

    .line 75
    .line 76
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

.method private final b()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$string;->api_alternate:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const-string v0, "https://api.shorttv.app"

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/p$a;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$string;->api_def:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lid/a;->a:Lid/a;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lid/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "noflow"

    .line 16
    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    sget-object v2, Lud/b;->a:Lud/b;

    .line 24
    .line 25
    invoke-virtual {v2}, Lud/b;->y()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v1, v0, v2}, Lid/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_1
    :goto_0
    return-object v0

    .line 43
    :catch_0
    const-string v0, "https://api.shorttv.live"

    .line 44
    .line 45
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$string;->api_event:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const-string v0, "https://test-app-event.shorttv.live"

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/p$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/p$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/p$a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/p$a;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "api.shorttv"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public final j(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/startshorts/androidplayer/manager/api/base/p$a;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method
