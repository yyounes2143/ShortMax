.class public final Luh/m1;
.super Ljava/lang/Object;
.source "SubtitleNetworkHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Luh/m1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Luh/m1;

    .line 2
    .line 3
    invoke-direct {v0}, Luh/m1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Luh/m1;->a:Luh/m1;

    .line 7
    .line 8
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

.method private final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "err null string"

    .line 4
    .line 5
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 6
    .line 7
    const-string v1, "SubtitleDownloadManager"

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Luh/i0;->a:Luh/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Luh/i0;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_2

    .line 11
    .line 12
    sget-object v0, Luh/m1;->a:Luh/m1;

    .line 13
    .line 14
    invoke-virtual {v0}, Luh/m1;->b()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "add subtitle download work but no network:"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Luh/m1;->c(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sput-object p1, Luh/m1;->b:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "add subtitle download work:"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Luh/m1;->c(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    sput-object v0, Luh/m1;->b:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 65
    .line 66
    sget-object v0, Luh/l1;->a:Luh/l1;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Luh/l1;->d(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "connectivity"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    const/4 v3, 0x3

    .line 49
    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    :cond_2
    move v2, v1

    .line 56
    :cond_3
    return v2
.end method

.method public final d()V
    .locals 4

    .line 1
    sget-object v0, Luh/m1;->b:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v1, Luh/i0;->a:Luh/i0;

    .line 6
    .line 7
    invoke-virtual {v1}, Luh/i0;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v1, Luh/m1;->a:Luh/m1;

    .line 15
    .line 16
    invoke-virtual {v1}, Luh/m1;->b()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const-string v0, "resume subtitle download work but no network"

    .line 23
    .line 24
    invoke-direct {v1, v0}, Luh/m1;->c(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "resume subtitle download work:"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Luh/m1;->c(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Luh/l1;->a:Luh/l1;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Luh/l1;->d(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    sput-object v0, Luh/m1;->b:Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 55
    .line 56
    :cond_2
    return-void
.end method
