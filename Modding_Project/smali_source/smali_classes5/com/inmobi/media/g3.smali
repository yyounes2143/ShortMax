.class public final Lcom/inmobi/media/g3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/N2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 3

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    sget-object v0, Lcom/inmobi/media/h3;->a:Lcom/inmobi/media/h3;

    .line 8
    .line 9
    const-string v1, "h3"

    .line 10
    .line 11
    const-string v2, "<get-TAG>(...)"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast p1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 17
    .line 18
    sput-object p1, Lcom/inmobi/media/h3;->d:Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getAK()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-static {p1}, Lcom/inmobi/media/j4;->a(Ljava/lang/String;)[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sput-object p1, Lcom/inmobi/media/h3;->f:[B

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/inmobi/media/h3;->b()V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit p0

    .line 44
    throw p1
.end method
