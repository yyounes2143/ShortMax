.class public final Lcom/inmobi/media/r;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/z5;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Lcom/inmobi/media/z5;Landroid/content/Context;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/r;->a:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/r;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/inmobi/media/r;->c:J

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static final a(Lcom/inmobi/media/z5;Landroid/content/Context;J)V
    .locals 2

    if-eqz p0, :cond_0

    .line 6
    check-cast p0, Lcom/inmobi/media/A5;

    const-string v0, "AdAudioTracker"

    const-string v1, "Starting audio volume tracking"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    sget-object p0, Lcom/inmobi/media/s;->b:Landroid/media/AudioManager;

    if-nez p0, :cond_1

    .line 8
    const-string p0, "audio"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/media/AudioManager;

    .line 9
    sput-object p0, Lcom/inmobi/media/s;->b:Landroid/media/AudioManager;

    .line 10
    :cond_1
    sget-object p0, Lcom/inmobi/media/s;->a:Lcom/inmobi/media/s;

    .line 11
    invoke-static {p2, p3}, Lcom/inmobi/media/s;->a(J)V

    .line 12
    new-instance v0, Lcom/inmobi/media/q;

    invoke-direct {v0, p2, p3}, Lcom/inmobi/media/q;-><init>(J)V

    sput-object v0, Lcom/inmobi/media/s;->h:Lcom/inmobi/media/q;

    .line 13
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    move-result-object p2

    const/16 p3, 0x66

    const/16 v1, 0x65

    .line 14
    filled-new-array {p3, v1}, [I

    move-result-object p3

    .line 15
    invoke-virtual {p2, p3, v0}, Lcom/inmobi/media/H7;->a([ILkotlin/jvm/functions/Function1;)V

    .line 16
    new-instance p2, Lcom/inmobi/media/n;

    invoke-direct {p2}, Lcom/inmobi/media/n;-><init>()V

    sput-object p2, Lcom/inmobi/media/s;->c:Lcom/inmobi/media/n;

    .line 17
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18
    sget-object p3, Lcom/inmobi/media/s;->c:Lcom/inmobi/media/n;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0}, Lcom/inmobi/media/s;->a()F

    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lcom/inmobi/media/s;->a(Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Unit;
    .locals 6

    .line 1
    sget-object v0, Lcom/inmobi/media/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/inmobi/media/z4;->c:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 4
    iget-object v1, p0, Lcom/inmobi/media/r;->a:Lcom/inmobi/media/z5;

    iget-object v2, p0, Lcom/inmobi/media/r;->b:Landroid/content/Context;

    iget-wide v3, p0, Lcom/inmobi/media/r;->c:J

    new-instance v5, Lub/d6;

    invoke-direct {v5, v1, v2, v3, v4}, Lub/d6;-><init>(Lcom/inmobi/media/z5;Landroid/content/Context;J)V

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/r;->a:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "AdAudioTracker"

    const-string v2, "Audio volume tracking is already started"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/r;->a()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
