.class public final Lcom/inmobi/media/Id;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/inmobi/media/Jd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const-string v0, "Jd"

    .line 9
    .line 10
    const-string v1, "access$getTAG$p(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Lcom/inmobi/media/d2;

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    const-string v2, "available"

    .line 29
    .line 30
    const/16 v3, 0xa

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/d2;-><init>(IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/inmobi/media/H7;->b(Lcom/inmobi/media/d2;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 4

    .line 1
    const-string v0, "network"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/inmobi/media/Jd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    const-string v0, "Jd"

    .line 9
    .line 10
    const-string v1, "access$getTAG$p(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lcom/inmobi/media/d2;

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    const-string v2, "lost"

    .line 26
    .line 27
    const/16 v3, 0xa

    .line 28
    .line 29
    invoke-direct {v0, v3, v1, v2}, Lcom/inmobi/media/d2;-><init>(IILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/inmobi/media/H7;->b(Lcom/inmobi/media/d2;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
