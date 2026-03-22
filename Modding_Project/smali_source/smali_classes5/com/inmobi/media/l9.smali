.class public final Lcom/inmobi/media/l9;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field public static final C:Ljava/lang/String; = "l9"


# instance fields
.field public final A:Landroid/media/MediaPlayer$OnErrorListener;

.field public final B:Lcom/inmobi/media/k9;

.field public a:Landroid/net/Uri;

.field public b:Landroid/view/Surface;

.field public c:Lcom/inmobi/media/G8;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lcom/inmobi/media/h9;

.field public j:Lcom/inmobi/media/g9;

.field public k:Lcom/inmobi/media/f9;

.field public l:Z

.field public m:Lcom/inmobi/media/i9;

.field public n:Lcom/inmobi/media/e9;

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Landroid/os/Handler;

.field public t:Z

.field public final u:Lcom/inmobi/media/f8;

.field public v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field public final w:Lcom/inmobi/media/j9;

.field public final x:Landroid/media/MediaPlayer$OnCompletionListener;

.field public final y:Landroid/media/MediaPlayer$OnInfoListener;

.field public final z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const/high16 p1, -0x80000000

    .line 10
    .line 11
    iput p1, p0, Lcom/inmobi/media/l9;->h:I

    .line 12
    .line 13
    new-instance p1, Lcom/inmobi/media/f8;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "getContext(...)"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, v0, p0}, Lcom/inmobi/media/f8;-><init>(Landroid/content/Context;Lcom/inmobi/media/l9;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/inmobi/media/l9;->u:Lcom/inmobi/media/f8;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lub/x4;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Lub/x4;-><init>(Lcom/inmobi/media/l9;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/inmobi/media/l9;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 41
    .line 42
    new-instance p1, Lcom/inmobi/media/j9;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/inmobi/media/j9;-><init>(Lcom/inmobi/media/l9;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/inmobi/media/l9;->w:Lcom/inmobi/media/j9;

    .line 48
    .line 49
    new-instance p1, Lub/y4;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Lub/y4;-><init>(Lcom/inmobi/media/l9;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/inmobi/media/l9;->x:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 55
    .line 56
    new-instance p1, Lub/z4;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Lub/z4;-><init>(Lcom/inmobi/media/l9;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/inmobi/media/l9;->y:Landroid/media/MediaPlayer$OnInfoListener;

    .line 62
    .line 63
    new-instance p1, Lub/a5;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lub/a5;-><init>(Lcom/inmobi/media/l9;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/inmobi/media/l9;->z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 69
    .line 70
    new-instance p1, Lub/b5;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Lub/b5;-><init>(Lcom/inmobi/media/l9;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/inmobi/media/l9;->A:Landroid/media/MediaPlayer$OnErrorListener;

    .line 76
    .line 77
    new-instance p1, Lcom/inmobi/media/k9;

    .line 78
    .line 79
    invoke-direct {p1, p0}, Lcom/inmobi/media/k9;-><init>(Lcom/inmobi/media/l9;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/inmobi/media/l9;->B:Lcom/inmobi/media/k9;

    .line 83
    .line 84
    return-void
.end method

.method public static final a(Lcom/inmobi/media/l9;)V
    .locals 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/inmobi/media/l9;->a:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {}, Lcom/inmobi/media/Nc;->a()Lcom/inmobi/media/m1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const-string v1, "diskUrl"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x1

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 30
    const-string v5, "created_ts DESC "

    const/16 v7, 0xc

    const-string v1, "disk_uri=? "

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 31
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/inmobi/media/j;

    .line 32
    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int v3, v0, v1

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    if-eqz p0, :cond_2

    .line 35
    iget-object p0, p0, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 36
    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 38
    new-instance v0, Lcom/inmobi/media/j;

    if-nez p0, :cond_1

    .line 39
    const-string p0, ""

    :cond_1
    move-object v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v13, 0x0

    move-object v2, v0

    .line 40
    invoke-direct/range {v2 .. v14}, Lcom/inmobi/media/j;-><init>(ILjava/lang/String;Ljava/lang/String;IJJJJ)V

    .line 41
    invoke-static {}, Lcom/inmobi/media/Nc;->a()Lcom/inmobi/media/m1;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/m1;->a(Lcom/inmobi/media/j;)V

    :cond_2
    return-void
.end method

.method public static final a(Lcom/inmobi/media/l9;Landroid/media/MediaPlayer;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object p1, Lcom/inmobi/media/l9;->C:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 4
    const-string p1, "event"

    invoke-static {p0, p1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p0

    .line 5
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :goto_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/l9;Landroid/media/MediaPlayer;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput p2, p0, Lcom/inmobi/media/l9;->o:I

    return-void
.end method

.method public static final a(Lcom/inmobi/media/l9;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    :catch_0
    iget-object p0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    const/4 p1, -0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iput p1, p0, Lcom/inmobi/media/G8;->a:I

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    iput p1, p0, Lcom/inmobi/media/G8;->b:I

    :cond_2
    :goto_1
    return-void
.end method

.method public static final a(Lcom/inmobi/media/l9;Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/inmobi/media/l9;->C:Ljava/lang/String;

    const-string p3, "TAG"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/inmobi/media/l9;->k:Lcom/inmobi/media/f9;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/inmobi/media/B8;

    .line 9
    iget-object p3, p1, Lcom/inmobi/media/B8;->a:Lcom/inmobi/media/D8;

    .line 10
    iget-object p3, p3, Lcom/inmobi/media/D8;->b:Lcom/inmobi/media/T7;

    .line 11
    iget-boolean v0, p3, Lcom/inmobi/media/T7;->t:Z

    if-nez v0, :cond_0

    .line 12
    instance-of v0, p3, Lcom/inmobi/media/a9;

    if-eqz v0, :cond_0

    .line 13
    :try_start_0
    check-cast p3, Lcom/inmobi/media/a9;

    iget-object v0, p1, Lcom/inmobi/media/B8;->b:Lcom/inmobi/media/c9;

    invoke-virtual {p3, v0, p2}, Lcom/inmobi/media/a9;->a(Lcom/inmobi/media/c9;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 14
    iget-object p1, p1, Lcom/inmobi/media/B8;->a:Lcom/inmobi/media/D8;

    .line 15
    iget-object p3, p1, Lcom/inmobi/media/D8;->f:Lcom/inmobi/media/z5;

    if-eqz p3, :cond_0

    .line 16
    iget-object p1, p1, Lcom/inmobi/media/D8;->g:Ljava/lang/String;

    .line 17
    const-string v0, "access$getTAG$p(...)"

    const-string v1, "SDK encountered unexpected error in handling the onVideoError event; "

    invoke-static {p1, v0, v1}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    invoke-static {p2, v0}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 19
    check-cast p3, Lcom/inmobi/media/A5;

    invoke-virtual {p3, p1, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    const/4 p2, -0x1

    if-nez p1, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    iput p2, p1, Lcom/inmobi/media/G8;->a:I

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    iput p2, p1, Lcom/inmobi/media/G8;->b:I

    .line 23
    :goto_2
    iget-object p1, p0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/inmobi/media/e9;->c()V

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->b()V

    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Lcom/inmobi/media/l9;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/media/l9;->a:Landroid/net/Uri;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :cond_0
    sget-object v0, Lcom/inmobi/media/z4;->d:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/o7;

    .line 7
    new-instance v1, Lub/w4;

    invoke-direct {v1, p0}, Lub/w4;-><init>(Lcom/inmobi/media/l9;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string p0, "runnable"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p0, v0, Lcom/inmobi/media/o7;->a:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 10
    :catch_0
    iget-object p0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    const/4 v0, -0x1

    if-nez p0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iput v0, p0, Lcom/inmobi/media/G8;->a:I

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iput v0, p0, Lcom/inmobi/media/G8;->b:I

    :goto_1
    return-void
.end method

.method public static final b(Lcom/inmobi/media/l9;Landroid/media/MediaPlayer;II)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-ne p1, p2, :cond_0

    const/16 p1, 0x8

    .line 1
    invoke-virtual {p0, p1, p1}, Lcom/inmobi/media/l9;->a(II)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final c(Lcom/inmobi/media/l9;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/inmobi/media/l9;->d(Lcom/inmobi/media/l9;)V

    return-void
.end method

.method public static final c(Lcom/inmobi/media/l9;Landroid/media/MediaPlayer;II)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/inmobi/media/l9;->e:I

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/inmobi/media/l9;->f:I

    .line 3
    iget p2, p0, Lcom/inmobi/media/l9;->e:I

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public static final d(Lcom/inmobi/media/l9;)V
    .locals 7

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    if-eqz v3, :cond_0

    .line 30
    iget-object v4, p0, Lcom/inmobi/media/l9;->w:Lcom/inmobi/media/j9;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 31
    iget-object v4, p0, Lcom/inmobi/media/l9;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 32
    iget-object v4, p0, Lcom/inmobi/media/l9;->x:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 33
    iget-object v4, p0, Lcom/inmobi/media/l9;->A:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 34
    iget-object v4, p0, Lcom/inmobi/media/l9;->y:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 35
    iget-object v4, p0, Lcom/inmobi/media/l9;->z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 36
    iget-object v4, p0, Lcom/inmobi/media/l9;->b:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 37
    :cond_0
    :goto_0
    sget-object v3, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v3}, Lcom/inmobi/media/L3;->J()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_1

    .line 38
    iget-object v3, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/inmobi/media/l9;->u:Lcom/inmobi/media/f8;

    .line 39
    iget-object v5, v5, Lcom/inmobi/media/f8;->e:Landroid/media/AudioAttributes;

    .line 40
    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    goto :goto_1

    .line 41
    :cond_1
    iget-object v3, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 42
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 43
    :cond_3
    iput v2, p0, Lcom/inmobi/media/l9;->o:I

    .line 44
    iget-object v3, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    if-nez v3, :cond_4

    goto :goto_2

    .line 45
    :cond_4
    iput v1, v3, Lcom/inmobi/media/G8;->a:I

    :goto_2
    if-eqz v3, :cond_5

    .line 46
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->getMediaController()Lcom/inmobi/media/e9;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 47
    invoke-virtual {v3, p0}, Lcom/inmobi/media/e9;->setMediaPlayer(Lcom/inmobi/media/l9;)V

    .line 48
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    invoke-virtual {v3}, Lcom/inmobi/media/e9;->d()V

    .line 50
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 51
    instance-of v5, v3, Lcom/inmobi/media/c9;

    if-eqz v5, :cond_8

    .line 52
    move-object v5, v3

    check-cast v5, Lcom/inmobi/media/c9;

    .line 53
    iget-object v5, v5, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 54
    const-string v6, "shouldAutoPlay"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 55
    iget-object v5, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    if-nez v5, :cond_6

    goto :goto_3

    .line 56
    :cond_6
    iput v4, v5, Lcom/inmobi/media/G8;->b:I

    .line 57
    :cond_7
    :goto_3
    check-cast v3, Lcom/inmobi/media/c9;

    .line 58
    iget-object v3, v3, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 59
    const-string v4, "didCompleteQ4"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    .line 60
    invoke-virtual {p0, v0, v2}, Lcom/inmobi/media/l9;->a(II)V

    return-void

    .line 61
    :cond_8
    invoke-virtual {p0, v2, v2}, Lcom/inmobi/media/l9;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 62
    :goto_4
    iget-object v3, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    const/4 v4, -0x1

    if-nez v3, :cond_9

    goto :goto_5

    .line 63
    :cond_9
    iput v4, v3, Lcom/inmobi/media/G8;->a:I

    :goto_5
    if-nez v3, :cond_a

    goto :goto_6

    .line 64
    :cond_a
    iput v4, v3, Lcom/inmobi/media/G8;->b:I

    .line 65
    :goto_6
    iget-object p0, p0, Lcom/inmobi/media/l9;->A:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-interface {p0, v3, v1, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 66
    sget-object p0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 67
    const-string p0, "event"

    invoke-static {v0, p0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p0

    .line 68
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :goto_7
    return-void
.end method

.method public static final e(Lcom/inmobi/media/l9;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->pause()V

    return-void
.end method

.method private final setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/inmobi/media/l9;->setVideoURI(Landroid/net/Uri;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final setVideoURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/l9;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->e()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 70
    iget-boolean v0, p0, Lcom/inmobi/media/l9;->t:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/inmobi/media/l9;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/l9;->s:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/media/l9;->s:Landroid/os/Handler;

    :cond_1
    if-lez p1, :cond_2

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/inmobi/media/l9;->t:Z

    .line 74
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->c()V

    .line 75
    iget-object v0, p0, Lcom/inmobi/media/l9;->s:Landroid/os/Handler;

    if-eqz v0, :cond_3

    new-instance v1, Lub/e5;

    invoke-direct {v1, p0}, Lub/e5;-><init>(Lcom/inmobi/media/l9;)V

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->pause()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(II)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    if-eqz v0, :cond_6

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/m9;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/inmobi/media/m9;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/m9;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Lcom/inmobi/media/m9;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/inmobi/media/m9;

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/inmobi/media/m9;->getPosterImage()Landroid/widget/ImageView;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    goto :goto_4

    .line 81
    :cond_5
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final a(Lcom/inmobi/media/c9;)V
    .locals 4

    const-string v0, "videoAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/inmobi/media/l9;->e:I

    .line 43
    iput v0, p0, Lcom/inmobi/media/l9;->f:I

    .line 44
    iget-object v0, p1, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 45
    instance-of v1, v0, Lcom/inmobi/media/Ve;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/inmobi/media/Ve;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 46
    check-cast v0, Lcom/inmobi/media/Ue;

    invoke-virtual {v0}, Lcom/inmobi/media/Ue;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/inmobi/media/l9;->a:Landroid/net/Uri;

    .line 48
    iget-object v1, p1, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 49
    const-string v2, "placementType"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Byte"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_3

    .line 50
    new-instance v1, Lcom/inmobi/media/G8;

    invoke-direct {v1}, Lcom/inmobi/media/G8;-><init>()V

    goto :goto_1

    .line 51
    :cond_3
    sget-object v1, Lcom/inmobi/media/G8;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/inmobi/media/F8;->a()Lcom/inmobi/media/G8;

    move-result-object v1

    .line 52
    :goto_1
    iput-object v1, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 53
    iget v3, p0, Lcom/inmobi/media/l9;->d:I

    if-eqz v3, :cond_4

    .line 54
    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_2

    .line 55
    :cond_4
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/inmobi/media/l9;->d:I

    .line 56
    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    new-instance p1, Lcom/inmobi/media/i9;

    invoke-direct {p1, p0}, Lcom/inmobi/media/i9;-><init>(Lcom/inmobi/media/l9;)V

    iput-object p1, p0, Lcom/inmobi/media/l9;->m:Lcom/inmobi/media/i9;

    .line 58
    iget-object p1, p0, Lcom/inmobi/media/l9;->B:Lcom/inmobi/media/k9;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 59
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 60
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 62
    sget-object p1, Lcom/inmobi/media/z4;->c:Lms/i;

    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 63
    new-instance v1, Lub/v4;

    invoke-direct {v1, p0, v0}, Lub/v4;-><init>(Lcom/inmobi/media/l9;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a()Z
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 69
    iget v0, v0, Lcom/inmobi/media/G8;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final b()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/l9;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lub/d5;

    invoke-direct {v0, p0}, Lub/d5;-><init>(Lcom/inmobi/media/l9;)V

    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v0, Lcom/inmobi/media/l9;->C:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/l9;->u:Lcom/inmobi/media/f8;

    invoke-virtual {v0}, Lcom/inmobi/media/f8;->a()V

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->h()V

    :cond_0
    return-void
.end method

.method public final canPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/l9;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public final canSeekBackward()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/l9;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public final canSeekForward()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/l9;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput v1, v0, Lcom/inmobi/media/G8;->a:I

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iput v1, v0, Lcom/inmobi/media/G8;->b:I

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/media/e9;->c()V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/l9;->m:Lcom/inmobi/media/i9;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/inmobi/media/c9;

    if-eqz v1, :cond_7

    .line 8
    check-cast v0, Lcom/inmobi/media/c9;

    .line 9
    iget-object v1, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 10
    const-string v2, "didCompleteQ4"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 11
    iget-object v1, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 12
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/inmobi/media/l9;->i:Lcom/inmobi/media/h9;

    if-eqz v1, :cond_4

    check-cast v1, Lcom/inmobi/media/z8;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/inmobi/media/z8;->a(B)V

    .line 14
    :cond_4
    iget-object v1, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 15
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "didSignalVideoCompleted"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    .line 17
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "didCompleteQ1"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v4, "didCompleteQ2"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v4, "didCompleteQ3"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v4, "didPause"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v4, "didStartPlaying"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v4, "didQ4Fire"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_5
    iget-boolean v1, v0, Lcom/inmobi/media/c9;->B:Z

    if-eqz v1, :cond_6

    .line 24
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->start()V

    goto :goto_2

    .line 25
    :cond_6
    iget-object v1, p0, Lcom/inmobi/media/l9;->u:Lcom/inmobi/media/f8;

    invoke-virtual {v1}, Lcom/inmobi/media/f8;->a()V

    .line 26
    iget-object v0, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 27
    const-string v1, "isFullScreen"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/l9;->a(II)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final e()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/l9;->a:Landroid/net/Uri;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inmobi/media/l9;->b:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto :goto_4

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    if-nez v0, :cond_5

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/inmobi/media/c9;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/inmobi/media/c9;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 6
    const-string v2, "placementType"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Byte"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-ne v1, v0, :cond_3

    .line 7
    new-instance v0, Lcom/inmobi/media/G8;

    invoke-direct {v0}, Lcom/inmobi/media/G8;-><init>()V

    goto :goto_2

    .line 8
    :cond_3
    sget-object v0, Lcom/inmobi/media/G8;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/inmobi/media/F8;->a()Lcom/inmobi/media/G8;

    move-result-object v0

    .line 9
    :goto_2
    iput-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 10
    iget v1, p0, Lcom/inmobi/media/l9;->d:I

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/inmobi/media/l9;->d:I

    .line 13
    :goto_3
    sget-object v0, Lcom/inmobi/media/z4;->c:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 14
    new-instance v1, Lub/c5;

    invoke-direct {v1, p0}, Lub/c5;-><init>(Lcom/inmobi/media/l9;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 15
    :cond_5
    invoke-static {p0}, Lcom/inmobi/media/l9;->d(Lcom/inmobi/media/l9;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->b:Landroid/view/Surface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/inmobi/media/l9;->b:Landroid/view/Surface;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->g()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->m:Lcom/inmobi/media/i9;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/l9;->u:Lcom/inmobi/media/f8;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/inmobi/media/f8;->a()V

    .line 12
    .line 13
    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v2, 0x1a

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-lt v1, v2, :cond_1

    .line 20
    .line 21
    iput-object v3, v0, Lcom/inmobi/media/f8;->f:Landroid/media/AudioFocusRequest;

    .line 22
    .line 23
    :cond_1
    iput-object v3, v0, Lcom/inmobi/media/f8;->g:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    instance-of v1, v0, Lcom/inmobi/media/c9;

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    move-object v2, v0

    .line 34
    check-cast v2, Lcom/inmobi/media/c9;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->getCurrentPosition()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "seekPosition"

    .line 47
    .line 48
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v2, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    iput v4, v2, Lcom/inmobi/media/G8;->a:I

    .line 58
    .line 59
    :goto_0
    if-nez v2, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    iput v4, v2, Lcom/inmobi/media/G8;->b:I

    .line 63
    .line 64
    :goto_1
    if-eqz v2, :cond_5

    .line 65
    .line 66
    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception v2

    .line 71
    sget-object v4, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 72
    .line 73
    const-string v4, "event"

    .line 74
    .line 75
    invoke-static {v2, v4}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sget-object v4, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 80
    .line 81
    invoke-virtual {v4, v2}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 85
    .line 86
    if-eqz v2, :cond_6

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 104
    .line 105
    .line 106
    :cond_6
    if-eqz v1, :cond_7

    .line 107
    .line 108
    check-cast v0, Lcom/inmobi/media/c9;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 111
    .line 112
    const-string v1, "placementType"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "null cannot be cast to non-null type kotlin.Byte"

    .line 119
    .line 120
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    check-cast v0, Ljava/lang/Byte;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 132
    .line 133
    if-eqz v0, :cond_8

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/inmobi/media/G8;->a()V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 140
    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/inmobi/media/G8;->a()V

    .line 144
    .line 145
    .line 146
    :cond_8
    :goto_3
    sget-object v0, Lcom/inmobi/media/l9;->C:Ljava/lang/String;

    .line 147
    .line 148
    const-string v1, "TAG"

    .line 149
    .line 150
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iput-object v3, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 154
    .line 155
    return-void
.end method

.method public final getAudioFocusManager$media_release()Lcom/inmobi/media/f8;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->u:Lcom/inmobi/media/f8;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/inmobi/media/l9;->d:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/media/MediaPlayer;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput v1, p0, Lcom/inmobi/media/l9;->d:I

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/inmobi/media/l9;->d:I

    .line 20
    .line 21
    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/inmobi/media/l9;->o:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, -0x1

    .line 17
    :goto_0
    return v0
.end method

.method public final getLastVolume()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/media/l9;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMSizeChangedListener()Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMediaController()Lcom/inmobi/media/e9;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMediaPlayer()Lcom/inmobi/media/G8;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPauseScheduled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/l9;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPlaybackEventListener()Lcom/inmobi/media/g9;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->j:Lcom/inmobi/media/g9;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQuartileCompletedListener()Lcom/inmobi/media/h9;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->i:Lcom/inmobi/media/h9;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/inmobi/media/G8;->a:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final getVideoVolume()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->isPlaying()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/inmobi/media/l9;->g:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    :goto_0
    return v0
.end method

.method public final getVolume()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/inmobi/media/l9;->g:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    :goto_0
    return v0
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/inmobi/media/l9;->g:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v2, v0, Lcom/inmobi/media/c9;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    check-cast v0, Lcom/inmobi/media/c9;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "currentMediaVolume"

    .line 29
    .line 30
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/inmobi/media/l9;->g:I

    .line 7
    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Lcom/inmobi/media/c9;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Lcom/inmobi/media/c9;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 24
    .line 25
    const/16 v1, 0xf

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "currentMediaVolume"

    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    return v1
.end method

.method public final j()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_4

    .line 18
    .line 19
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/l9;->u:Lcom/inmobi/media/f8;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/inmobi/media/f8;->a()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    instance-of v3, v0, Lcom/inmobi/media/c9;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    check-cast v0, Lcom/inmobi/media/c9;

    .line 48
    .line 49
    iget-object v3, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 50
    .line 51
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    const-string v5, "didPause"

    .line 54
    .line 55
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object v3, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v5, "seekPosition"

    .line 65
    .line 66
    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 70
    .line 71
    const-string v2, "didCompleteQ4"

    .line 72
    .line 73
    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 77
    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iput v1, v0, Lcom/inmobi/media/G8;->a:I

    .line 82
    .line 83
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/l9;->j:Lcom/inmobi/media/g9;

    .line 84
    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    check-cast v0, Lcom/inmobi/media/A8;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/inmobi/media/A8;->a(B)V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    iput v1, v0, Lcom/inmobi/media/G8;->b:I

    .line 98
    .line 99
    :goto_1
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/inmobi/media/l9;->u:Lcom/inmobi/media/f8;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/inmobi/media/f8;->c()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->i()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 1
    :try_start_0
    iget v0, p0, Lcom/inmobi/media/l9;->e:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/inmobi/media/l9;->f:I

    .line 8
    .line 9
    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p0, Lcom/inmobi/media/l9;->e:I

    .line 14
    .line 15
    if-lez v2, :cond_8

    .line 16
    .line 17
    iget v2, p0, Lcom/inmobi/media/l9;->f:I

    .line 18
    .line 19
    if-lez v2, :cond_8

    .line 20
    .line 21
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/high16 v2, 0x40000000    # 2.0f

    .line 38
    .line 39
    if-ne v0, v2, :cond_1

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    iget v0, p0, Lcom/inmobi/media/l9;->e:I

    .line 44
    .line 45
    mul-int v1, v0, p2

    .line 46
    .line 47
    iget v2, p0, Lcom/inmobi/media/l9;->f:I

    .line 48
    .line 49
    mul-int v3, p1, v2

    .line 50
    .line 51
    if-ge v1, v3, :cond_0

    .line 52
    .line 53
    div-int/2addr v3, v0

    .line 54
    goto :goto_4

    .line 55
    :cond_0
    if-le v1, v3, :cond_4

    .line 56
    .line 57
    div-int v0, v1, v2

    .line 58
    .line 59
    :goto_0
    move v1, p2

    .line 60
    goto :goto_5

    .line 61
    :cond_1
    const/high16 v3, -0x80000000

    .line 62
    .line 63
    if-ne v0, v2, :cond_3

    .line 64
    .line 65
    iget v0, p0, Lcom/inmobi/media/l9;->f:I

    .line 66
    .line 67
    mul-int/2addr v0, p1

    .line 68
    iget v2, p0, Lcom/inmobi/media/l9;->e:I

    .line 69
    .line 70
    div-int/2addr v0, v2

    .line 71
    if-ne v1, v3, :cond_2

    .line 72
    .line 73
    if-le v0, p2, :cond_2

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move v1, v0

    .line 77
    :goto_1
    move v0, p1

    .line 78
    goto :goto_5

    .line 79
    :cond_3
    if-ne v1, v2, :cond_6

    .line 80
    .line 81
    iget v1, p0, Lcom/inmobi/media/l9;->e:I

    .line 82
    .line 83
    mul-int/2addr v1, p2

    .line 84
    iget v2, p0, Lcom/inmobi/media/l9;->f:I

    .line 85
    .line 86
    div-int/2addr v1, v2

    .line 87
    if-ne v0, v3, :cond_5

    .line 88
    .line 89
    if-le v1, p1, :cond_5

    .line 90
    .line 91
    :cond_4
    :goto_2
    move v1, p2

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    move v0, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_6
    iget v2, p0, Lcom/inmobi/media/l9;->e:I

    .line 96
    .line 97
    iget v4, p0, Lcom/inmobi/media/l9;->f:I

    .line 98
    .line 99
    if-ne v1, v3, :cond_7

    .line 100
    .line 101
    if-le v4, p2, :cond_7

    .line 102
    .line 103
    mul-int v1, p2, v2

    .line 104
    .line 105
    div-int/2addr v1, v4

    .line 106
    goto :goto_3

    .line 107
    :cond_7
    move v1, v2

    .line 108
    move p2, v4

    .line 109
    :goto_3
    if-ne v0, v3, :cond_5

    .line 110
    .line 111
    if-le v1, p1, :cond_5

    .line 112
    .line 113
    mul-int/2addr v4, p1

    .line 114
    div-int v3, v4, v2

    .line 115
    .line 116
    :goto_4
    move v1, v3

    .line 117
    goto :goto_1

    .line 118
    :cond_8
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_6

    .line 122
    :catch_0
    sget-object p1, Lcom/inmobi/media/l9;->C:Ljava/lang/String;

    .line 123
    .line 124
    const-string p2, "TAG"

    .line 125
    .line 126
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_6
    return-void
.end method

.method public final pause()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iput v1, v0, Lcom/inmobi/media/G8;->a:I

    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/l9;->u:Lcom/inmobi/media/f8;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/inmobi/media/f8;->a()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    instance-of v2, v0, Lcom/inmobi/media/c9;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    check-cast v0, Lcom/inmobi/media/c9;

    .line 47
    .line 48
    iget-object v2, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 49
    .line 50
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    const-string v4, "didPause"

    .line 53
    .line 54
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v0, v0, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->getCurrentPosition()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "seekPosition"

    .line 68
    .line 69
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/l9;->j:Lcom/inmobi/media/g9;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    check-cast v0, Lcom/inmobi/media/A8;

    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    invoke-virtual {v0, v2}, Lcom/inmobi/media/A8;->a(B)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 83
    .line 84
    if-nez v0, :cond_4

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    iput v1, v0, Lcom/inmobi/media/G8;->b:I

    .line 88
    .line 89
    :goto_1
    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/inmobi/media/l9;->t:Z

    .line 91
    .line 92
    return-void
.end method

.method public final seekTo(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setIsLockScreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/l9;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLastVolume(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/media/l9;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/media/l9;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 7
    .line 8
    return-void
.end method

.method public final setMediaController(Lcom/inmobi/media/e9;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/e9;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->getMediaController()Lcom/inmobi/media/e9;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Lcom/inmobi/media/e9;->setMediaPlayer(Lcom/inmobi/media/l9;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/inmobi/media/e9;->d()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final setMediaErrorListener(Lcom/inmobi/media/f9;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/f9;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/l9;->k:Lcom/inmobi/media/f9;

    .line 2
    .line 3
    return-void
.end method

.method public final setPlaybackEventListener(Lcom/inmobi/media/g9;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/g9;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/l9;->j:Lcom/inmobi/media/g9;

    .line 2
    .line 3
    return-void
.end method

.method public final setQuartileCompletedListener(Lcom/inmobi/media/h9;)V
    .locals 0
    .param p1    # Lcom/inmobi/media/h9;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/l9;->i:Lcom/inmobi/media/h9;

    .line 2
    .line 3
    return-void
.end method

.method public final start()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "power"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/os/PowerManager;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "keyguard"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "null cannot be cast to non-null type android.app.KeyguardManager"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v1, Landroid/app/KeyguardManager;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    instance-of v4, v3, Lcom/inmobi/media/c9;

    .line 52
    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    check-cast v3, Lcom/inmobi/media/c9;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 v3, 0x0

    .line 59
    :goto_0
    const-string v4, "null cannot be cast to non-null type kotlin.Boolean"

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    const/4 v6, 0x0

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    iget-object v7, v3, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 66
    .line 67
    const-string v8, "shouldAutoPlay"

    .line 68
    .line 69
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    check-cast v7, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    move v7, v6

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    :goto_1
    move v7, v5

    .line 88
    :goto_2
    const/16 v8, 0x8

    .line 89
    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    if-nez v7, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0, v8, v6}, Lcom/inmobi/media/l9;->a(II)V

    .line 95
    .line 96
    .line 97
    :cond_3
    const/4 v9, 0x3

    .line 98
    if-eqz v2, :cond_10

    .line 99
    .line 100
    if-eqz v0, :cond_10

    .line 101
    .line 102
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 103
    .line 104
    if-eqz v0, :cond_10

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_10

    .line 111
    .line 112
    if-eqz v7, :cond_10

    .line 113
    .line 114
    iget-boolean v0, p0, Lcom/inmobi/media/l9;->l:Z

    .line 115
    .line 116
    if-nez v0, :cond_4

    .line 117
    .line 118
    if-nez v1, :cond_10

    .line 119
    .line 120
    :cond_4
    const-string v0, "didCompleteQ4"

    .line 121
    .line 122
    if-eqz v3, :cond_5

    .line 123
    .line 124
    iget-object v1, v3, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    check-cast v1, Ljava/lang/Boolean;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_5

    .line 140
    .line 141
    iget-object v1, v3, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 142
    .line 143
    const-string v2, "seekPosition"

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    .line 150
    .line 151
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    check-cast v1, Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    goto :goto_3

    .line 161
    :cond_5
    move v1, v6

    .line 162
    :goto_3
    if-eqz v3, :cond_6

    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/inmobi/media/c9;->c()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    goto :goto_4

    .line 169
    :cond_6
    move v2, v6

    .line 170
    :goto_4
    if-eqz v2, :cond_7

    .line 171
    .line 172
    iget-object v2, p0, Lcom/inmobi/media/l9;->u:Lcom/inmobi/media/f8;

    .line 173
    .line 174
    invoke-virtual {v2}, Lcom/inmobi/media/f8;->c()V

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->c()V

    .line 179
    .line 180
    .line 181
    :goto_5
    invoke-virtual {p0}, Lcom/inmobi/media/l9;->a()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_8

    .line 186
    .line 187
    iget-object v2, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 188
    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 192
    .line 193
    .line 194
    :cond_8
    iget-object v1, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 195
    .line 196
    if-eqz v1, :cond_9

    .line 197
    .line 198
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 199
    .line 200
    .line 201
    :cond_9
    iget-object v1, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 202
    .line 203
    if-nez v1, :cond_a

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_a
    iput v9, v1, Lcom/inmobi/media/G8;->a:I

    .line 207
    .line 208
    :goto_6
    invoke-virtual {p0, v8, v8}, Lcom/inmobi/media/l9;->a(II)V

    .line 209
    .line 210
    .line 211
    if-eqz v3, :cond_f

    .line 212
    .line 213
    iget-object v1, v3, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 214
    .line 215
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 216
    .line 217
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    iget-object v0, v3, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 221
    .line 222
    const-string v1, "didPause"

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    check-cast v0, Ljava/lang/Boolean;

    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_c

    .line 238
    .line 239
    iget-object v0, p0, Lcom/inmobi/media/l9;->j:Lcom/inmobi/media/g9;

    .line 240
    .line 241
    if-eqz v0, :cond_b

    .line 242
    .line 243
    check-cast v0, Lcom/inmobi/media/A8;

    .line 244
    .line 245
    invoke-virtual {v0, v9}, Lcom/inmobi/media/A8;->a(B)V

    .line 246
    .line 247
    .line 248
    :cond_b
    iget-object v0, v3, Lcom/inmobi/media/d8;->t:Ljava/util/HashMap;

    .line 249
    .line 250
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    goto :goto_7

    .line 254
    :cond_c
    iget-object v0, p0, Lcom/inmobi/media/l9;->j:Lcom/inmobi/media/g9;

    .line 255
    .line 256
    if-eqz v0, :cond_d

    .line 257
    .line 258
    check-cast v0, Lcom/inmobi/media/A8;

    .line 259
    .line 260
    invoke-virtual {v0, v5}, Lcom/inmobi/media/A8;->a(B)V

    .line 261
    .line 262
    .line 263
    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/inmobi/media/l9;->m:Lcom/inmobi/media/i9;

    .line 264
    .line 265
    if-eqz v0, :cond_e

    .line 266
    .line 267
    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-nez v0, :cond_e

    .line 272
    .line 273
    move v6, v5

    .line 274
    :cond_e
    if-eqz v6, :cond_f

    .line 275
    .line 276
    iget-object v0, p0, Lcom/inmobi/media/l9;->m:Lcom/inmobi/media/i9;

    .line 277
    .line 278
    if-eqz v0, :cond_f

    .line 279
    .line 280
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 281
    .line 282
    .line 283
    :cond_f
    iget-object v0, p0, Lcom/inmobi/media/l9;->n:Lcom/inmobi/media/e9;

    .line 284
    .line 285
    if-eqz v0, :cond_10

    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/inmobi/media/e9;->d()V

    .line 288
    .line 289
    .line 290
    :cond_10
    iget-object v0, p0, Lcom/inmobi/media/l9;->c:Lcom/inmobi/media/G8;

    .line 291
    .line 292
    if-nez v0, :cond_11

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_11
    iput v9, v0, Lcom/inmobi/media/G8;->b:I

    .line 296
    .line 297
    :goto_8
    return-void
.end method
