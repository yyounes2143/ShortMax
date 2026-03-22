.class public final Lio/bidmachine/rendering/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


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

.method private final a(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 1

    .line 1
    invoke-static {p1}, Lyq/r;->h(Landroid/content/Context;)Landroid/app/DownloadManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/app/DownloadManager$Request;

    .line 8
    .line 9
    invoke-direct {v0, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    return-wide p1

    .line 22
    :cond_0
    const-wide/16 p1, -0x1

    .line 23
    .line 24
    return-wide p1
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/net/Uri;Lyq/d;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyq/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lyq/d<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "applicationContext"

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "uri"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-wide/16 v1, -0x1

    .line 18
    .line 19
    :try_start_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1, p2}, Lio/bidmachine/rendering/internal/r;->a(Landroid/content/Context;Landroid/net/Uri;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p2

    .line 28
    invoke-static {p2}, Ltp/s;->h(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    move-wide v3, v1

    .line 32
    :goto_0
    cmp-long p2, v3, v1

    .line 33
    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-static {p1, p3}, Lsq/j;->m(Ljava/lang/Object;Lyq/d;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    new-instance p2, Lio/bidmachine/rendering/internal/r$a;

    .line 43
    .line 44
    invoke-direct {p2, p3}, Lio/bidmachine/rendering/internal/r$a;-><init>(Lyq/d;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance p3, Landroid/content/IntentFilter;

    .line 51
    .line 52
    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 53
    .line 54
    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p2, p1, p3}, Lyq/r;->t(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    return-void
.end method
