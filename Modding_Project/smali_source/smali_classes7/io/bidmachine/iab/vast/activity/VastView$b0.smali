.class abstract Lio/bidmachine/iab/vast/activity/VastView$b0;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b0"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b0;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lio/bidmachine/iab/vast/activity/VastView$b0;->b:Landroid/net/Uri;

    .line 12
    .line 13
    iput-object p3, p0, Lio/bidmachine/iab/vast/activity/VastView$b0;->c:Ljava/lang/String;

    .line 14
    .line 15
    if-nez p3, :cond_1

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    new-instance p1, Ljava/io/File;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    :cond_0
    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/activity/VastView$b0;->d(Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method static synthetic a(Lio/bidmachine/iab/vast/activity/VastView$b0;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/iab/vast/activity/VastView$b0;->d:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method c()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b0;->e:Z

    .line 3
    .line 4
    return-void
.end method

.method abstract d(Landroid/graphics/Bitmap;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b0;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "MediaFrameRetriever"

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :try_start_0
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastView$b0;->b:Landroid/net/Uri;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v0, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b0;->c:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v4, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    const/16 v0, 0x9

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    const-wide/16 v6, 0x2

    .line 52
    .line 53
    div-long/2addr v4, v6

    .line 54
    const-wide/16 v6, 0x3e8

    .line 55
    .line 56
    mul-long/2addr v4, v6

    .line 57
    const/4 v0, 0x2

    .line 58
    invoke-virtual {v1, v4, v5, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b0;->d:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-array v4, v3, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-static {v2, v0, v4}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :catch_1
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-array v1, v3, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {v2, v0, v1}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :goto_3
    iget-boolean v0, p0, Lio/bidmachine/iab/vast/activity/VastView$b0;->e:Z

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    new-instance v0, Lio/bidmachine/iab/vast/activity/VastView$b0$a;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Lio/bidmachine/iab/vast/activity/VastView$b0$a;-><init>(Lio/bidmachine/iab/vast/activity/VastView$b0;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Lsm/q;->D(Ljava/lang/Runnable;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method
