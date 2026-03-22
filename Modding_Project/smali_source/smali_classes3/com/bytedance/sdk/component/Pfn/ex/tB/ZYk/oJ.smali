.class public Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;
    }
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

.method private ZYk([BLcom/bytedance/sdk/component/Pfn/ex/tB/ba;Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->cFZ()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->oJ()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v2, "P_GIF_MUTIL_CACHE/"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    const-string v2, "/P_GIF_CACHE/"

    .line 18
    .line 19
    :goto_0
    const-string v3, "P_U_GIF_FILE"

    .line 20
    .line 21
    invoke-static {p2, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/cFZ;->oJ(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    new-instance v1, Ljava/io/FileOutputStream;

    .line 26
    .line 27
    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :try_start_1
    array-length v0, p1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 33
    .line 34
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 v2, 0x1c

    .line 38
    .line 39
    if-lt v0, v2, :cond_2

    .line 40
    .line 41
    invoke-static {p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/c;->a(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/b;->a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p3, :cond_1

    .line 50
    .line 51
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;->oJ(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception p1

    .line 56
    move-object v0, v1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 59
    .line 60
    .line 61
    :catchall_2
    return-void

    .line 62
    :cond_2
    if-eqz p3, :cond_3

    .line 63
    .line 64
    :try_start_3
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;->oJ([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    .line 66
    .line 67
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 68
    .line 69
    .line 70
    :catchall_3
    return-void

    .line 71
    :goto_2
    :try_start_5
    const-string p2, "PAGGifDefaultDecoder"

    .line 72
    .line 73
    const-string v1, "Gif  getSourceByFile fail : "

    .line 74
    .line 75
    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 76
    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 81
    .line 82
    .line 83
    :catchall_4
    :cond_4
    if-eqz p3, :cond_5

    .line 84
    .line 85
    invoke-interface {p3}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;->oJ()V

    .line 86
    .line 87
    .line 88
    :cond_5
    return-void

    .line 89
    :catchall_5
    move-exception p1

    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 93
    .line 94
    .line 95
    :catchall_6
    :cond_6
    throw p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ;[BLcom/bytedance/sdk/component/Pfn/ex/tB/ba;Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ;->ZYk([BLcom/bytedance/sdk/component/Pfn/ex/tB/ba;Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;)V

    return-void
.end method

.method private oJ([BLcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;)V
    .locals 2

    .line 13
    :try_start_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->so()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$1;-><init>(Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ;[BLcom/bytedance/sdk/component/Pfn/ex/tB/ba;Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 14
    const-string p3, "PAGGifDefaultDecoder"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 15
    invoke-interface {p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;->oJ()V

    :cond_0
    return-void
.end method


# virtual methods
.method public oJ([BLcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;)V
    .locals 3

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    .line 7
    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/a;->a(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/b;->a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;->oJ(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    .line 10
    :goto_1
    const-string v0, "PAGGifDefaultDecoder"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 11
    invoke-interface {p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;->oJ()V

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 12
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;->oJ([B)V

    :cond_3
    return-void
.end method

.method public oJ([BLcom/bytedance/sdk/component/Pfn/ex/tB/ba;Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;)V
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ;->oJ([BLcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ;->oJ([BLcom/bytedance/sdk/component/Pfn/ex/tB/ZYk/oJ$oJ;)V

    return-void
.end method
