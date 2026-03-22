.class public abstract Lcom/inmobi/media/lf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/WeakHashMap;

.field public final b:Lcom/inmobi/media/ff;

.field public final c:Landroid/os/Handler;

.field public final d:B

.field public final e:Lcom/inmobi/media/z5;

.field public final f:I

.field public final g:Ljava/util/ArrayList;

.field public h:J

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public j:Lcom/inmobi/media/hf;

.field public final k:Lms/i;

.field public final l:Lms/i;

.field public m:Z


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ff;BLcom/inmobi/media/z5;)V
    .locals 3

    .line 1
    const-string v0, "visibilityChecker"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/WeakHashMap;

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/inmobi/media/lf;->a:Ljava/util/WeakHashMap;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/inmobi/media/lf;->b:Lcom/inmobi/media/ff;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/inmobi/media/lf;->c:Landroid/os/Handler;

    .line 30
    .line 31
    iput-byte p2, p0, Lcom/inmobi/media/lf;->d:B

    .line 32
    .line 33
    iput-object p3, p0, Lcom/inmobi/media/lf;->e:Lcom/inmobi/media/z5;

    .line 34
    .line 35
    const/16 p1, 0x32

    .line 36
    .line 37
    iput p1, p0, Lcom/inmobi/media/lf;->f:I

    .line 38
    .line 39
    new-instance p2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lcom/inmobi/media/lf;->g:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/inmobi/media/lf;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    new-instance p1, Lcom/inmobi/media/jf;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lcom/inmobi/media/jf;-><init>(Lcom/inmobi/media/lf;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/inmobi/media/lf;->k:Lms/i;

    .line 64
    .line 65
    new-instance p1, Lcom/inmobi/media/kf;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Lcom/inmobi/media/kf;-><init>(Lcom/inmobi/media/lf;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/inmobi/media/lf;->l:Lms/i;

    .line 75
    .line 76
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/inmobi/media/lf;->e:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clear "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "VisibilityTracker"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/lf;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 28
    iget-object v0, p0, Lcom/inmobi/media/lf;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    iput-boolean v1, p0, Lcom/inmobi/media/lf;->m:Z

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/inmobi/media/lf;->e:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removed view from tracker "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "VisibilityTracker"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/lf;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/if;

    if-eqz p1, :cond_1

    .line 23
    iget-wide v0, p0, Lcom/inmobi/media/lf;->h:J

    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/media/lf;->h:J

    .line 24
    iget-object p1, p0, Lcom/inmobi/media/lf;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/inmobi/media/lf;->e()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v1, "rootView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/lf;->e:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add view to tracker - minPercent - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "VisibilityTracker"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/lf;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/if;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/inmobi/media/if;

    invoke-direct {v0}, Lcom/inmobi/media/if;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/inmobi/media/lf;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-wide v1, p0, Lcom/inmobi/media/lf;->h:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/inmobi/media/lf;->h:J

    .line 7
    :cond_1
    iput p3, v0, Lcom/inmobi/media/if;->a:I

    .line 8
    iget-wide v1, p0, Lcom/inmobi/media/lf;->h:J

    .line 9
    iput-wide v1, v0, Lcom/inmobi/media/if;->b:J

    .line 10
    iput-object p1, v0, Lcom/inmobi/media/if;->c:Landroid/view/View;

    .line 11
    iput-object p2, v0, Lcom/inmobi/media/if;->d:Ljava/lang/Object;

    .line 12
    iget p1, p0, Lcom/inmobi/media/lf;->f:I

    int-to-long p1, p1

    rem-long v3, v1, p1

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-nez p3, :cond_5

    sub-long/2addr v1, p1

    .line 13
    iget-object p1, p0, Lcom/inmobi/media/lf;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inmobi/media/if;

    .line 14
    iget-wide v3, p2, Lcom/inmobi/media/if;->b:J

    cmp-long p2, v3, v1

    if-gez p2, :cond_2

    .line 15
    iget-object p2, p0, Lcom/inmobi/media/lf;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/lf;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 17
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/inmobi/media/lf;->a(Landroid/view/View;)V

    goto :goto_1

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/lf;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/inmobi/media/lf;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6

    .line 20
    invoke-virtual {p0}, Lcom/inmobi/media/lf;->f()V

    :cond_6
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/lf;->e:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "destroy "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v0, Lcom/inmobi/media/A5;

    .line 20
    .line 21
    const-string v2, "VisibilityTracker"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/lf;->a()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/inmobi/media/lf;->j:Lcom/inmobi/media/hf;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/inmobi/media/lf;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public abstract c()I
.end method

.method public abstract d()V
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/lf;->e:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "pause "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v0, Lcom/inmobi/media/A5;

    .line 20
    .line 21
    const-string v2, "VisibilityTracker"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/lf;->k:Lms/i;

    .line 27
    .line 28
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/inmobi/media/gf;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/inmobi/media/gf;->run()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/inmobi/media/lf;->c:Landroid/os/Handler;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/inmobi/media/lf;->m:Z

    .line 45
    .line 46
    iget-object v0, p0, Lcom/inmobi/media/lf;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/lf;->e:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "resume "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v0, Lcom/inmobi/media/A5;

    .line 20
    .line 21
    const-string v2, "VisibilityTracker"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/lf;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/inmobi/media/lf;->g()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/media/lf;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/inmobi/media/lf;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/inmobi/media/lf;->m:Z

    .line 16
    .line 17
    sget-object v0, Lcom/inmobi/media/z4;->c:Lms/i;

    .line 18
    .line 19
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/inmobi/media/lf;->l:Lms/i;

    .line 26
    .line 27
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Runnable;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/inmobi/media/lf;->c()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    int-to-long v2, v2

    .line 38
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method
