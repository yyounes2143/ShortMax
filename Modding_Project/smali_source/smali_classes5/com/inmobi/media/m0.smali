.class public final Lcom/inmobi/media/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/Va;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/o0;

.field public final synthetic b:Lcom/inmobi/media/V1;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/inmobi/media/Jb;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/o0;Lcom/inmobi/media/V1;ZLcom/inmobi/media/Jb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/m0;->a:Lcom/inmobi/media/o0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/m0;->b:Lcom/inmobi/media/V1;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/inmobi/media/m0;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/inmobi/media/m0;->d:Lcom/inmobi/media/Jb;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/inmobi/media/m0;->a:Lcom/inmobi/media/o0;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/m0;->b:Lcom/inmobi/media/V1;

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/inmobi/media/m0;->c:Z

    .line 8
    .line 9
    iget-object v3, p0, Lcom/inmobi/media/m0;->d:Lcom/inmobi/media/Jb;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v4, "process"

    .line 15
    .line 16
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v5, "Screen shot result received - isReporting - "

    .line 22
    .line 23
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v0, v4}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v4, v0, Lcom/inmobi/media/o0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    .line 38
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 49
    .line 50
    const/16 v5, 0x64

    .line 51
    .line 52
    invoke-virtual {p1, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    iget-object p1, v3, Lcom/inmobi/media/Jb;->a:Lcom/inmobi/media/ec;

    .line 64
    .line 65
    const-string v3, "window.mraidview.broadcastEvent(\'ScreenshotSuccess\')"

    .line 66
    .line 67
    invoke-virtual {p1, v3}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    const/4 p1, 0x0

    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    iget-object v2, v0, Lcom/inmobi/media/o0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    .line 74
    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/inmobi/adquality/models/AdQualityControl;->getBeacon()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    const-string v3, "saving to file - beacon - "

    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v0, v3}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2, v1, p1}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;[BZ)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    iget-object v2, v0, Lcom/inmobi/media/o0;->j:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    invoke-virtual {v0, v2, v1, v3}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;[BZ)V

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/inmobi/media/o0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final onError(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/m0;->a:Lcom/inmobi/media/o0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/inmobi/media/m0;->b:Lcom/inmobi/media/V1;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v2, "process"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "error in running process - "

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, p1, v2}, Lcom/inmobi/media/o0;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lcom/inmobi/media/o0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    invoke-virtual {v0, p1}, Lcom/inmobi/media/o0;->a(Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
