.class public final Lcom/inmobi/media/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

.field public final b:Lcom/inmobi/media/z5;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public g:Lcom/inmobi/adquality/models/AdQualityControl;

.field public h:Lcom/inmobi/media/df;

.field public i:Lcom/inmobi/adquality/models/AdQualityResult;

.field public j:Ljava/lang/String;

.field public k:Lorg/json/JSONObject;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "adQualityConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/o0;->a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/o0;->b:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/inmobi/media/o0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/inmobi/media/o0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/inmobi/media/o0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/inmobi/media/o0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    sget-object p1, Lcom/inmobi/media/df;->a:Lcom/inmobi/media/df;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/inmobi/media/o0;->h:Lcom/inmobi/media/df;

    .line 45
    .line 46
    const-string p1, ""

    .line 47
    .line 48
    iput-object p1, p0, Lcom/inmobi/media/o0;->j:Ljava/lang/String;

    .line 49
    .line 50
    new-instance p1, Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/inmobi/media/o0;->k:Lorg/json/JSONObject;

    .line 56
    .line 57
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/inmobi/media/o0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    return-void
.end method

.method public static final a(Lcom/inmobi/media/o0;Landroid/app/Activity;JZLcom/inmobi/media/Jb;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string v0, "activity is visible"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "getWindow(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/inmobi/media/Qa;

    iget-object v1, p0, Lcom/inmobi/media/o0;->a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    invoke-direct {v0, p1, v1}, Lcom/inmobi/media/Qa;-><init>(Landroid/view/Window;Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;)V

    if-nez p4, :cond_0

    .line 37
    iget-object p1, p0, Lcom/inmobi/media/o0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    new-instance p1, Lcom/inmobi/media/m0;

    invoke-direct {p1, p0, v0, p4, p5}, Lcom/inmobi/media/m0;-><init>(Lcom/inmobi/media/o0;Lcom/inmobi/media/V1;ZLcom/inmobi/media/Jb;)V

    .line 39
    new-instance p5, Lcom/inmobi/media/n0;

    invoke-direct {p5, p0}, Lcom/inmobi/media/n0;-><init>(Lcom/inmobi/media/o0;)V

    .line 40
    const-string v1, "process"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "shouldProcess"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v1, Lcom/inmobi/media/f0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/inmobi/media/d;

    invoke-direct {v1, p5, v0, p1}, Lcom/inmobi/media/d;-><init>(Lkotlin/jvm/functions/Function0;Lcom/inmobi/media/p0;Lcom/inmobi/media/Va;)V

    invoke-static {p2, p3, v1}, Lcom/inmobi/media/f0;->a(JLcom/inmobi/media/d;)V

    .line 42
    iget-object p0, p0, Lcom/inmobi/media/o0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 p1, p4, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/o0;Landroid/view/View;JZLcom/inmobi/media/Jb;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-string v0, "tag"

    const-string v1, "AdQualityManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    const-string v2, "starting capture - draw"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/inmobi/media/Qc;

    iget-object v1, p0, Lcom/inmobi/media/o0;->a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    invoke-direct {v0, p1, v1}, Lcom/inmobi/media/Qc;-><init>(Landroid/view/View;Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;)V

    if-nez p4, :cond_0

    .line 23
    iget-object p1, p0, Lcom/inmobi/media/o0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    new-instance p1, Lcom/inmobi/media/m0;

    invoke-direct {p1, p0, v0, p4, p5}, Lcom/inmobi/media/m0;-><init>(Lcom/inmobi/media/o0;Lcom/inmobi/media/V1;ZLcom/inmobi/media/Jb;)V

    .line 25
    new-instance p5, Lcom/inmobi/media/n0;

    invoke-direct {p5, p0}, Lcom/inmobi/media/n0;-><init>(Lcom/inmobi/media/o0;)V

    .line 26
    const-string v1, "process"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "shouldProcess"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v1, Lcom/inmobi/media/f0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/inmobi/media/d;

    invoke-direct {v1, p5, v0, p1}, Lcom/inmobi/media/d;-><init>(Lkotlin/jvm/functions/Function0;Lcom/inmobi/media/p0;Lcom/inmobi/media/Va;)V

    invoke-static {p2, p3, v1}, Lcom/inmobi/media/f0;->a(JLcom/inmobi/media/d;)V

    .line 28
    iget-object p0, p0, Lcom/inmobi/media/o0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 p1, p4, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;JZLcom/inmobi/media/Jb;)V
    .locals 9

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isCapture started - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/media/o0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isReporting - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/inmobi/media/o0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    const-string p1, "Screenshot process already in progress... skipping..."

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p0, p2, p1}, Lcom/inmobi/media/o0;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v8, Lub/n5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lub/n5;-><init>(Lcom/inmobi/media/o0;Landroid/app/Activity;JZLcom/inmobi/media/Jb;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final a(Lcom/inmobi/adquality/models/AdQualityResult;Z)V
    .locals 2

    .line 9
    invoke-virtual {p1}, Lcom/inmobi/adquality/models/AdQualityResult;->getBeaconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 10
    const-string p1, "beacon is empty"

    invoke-virtual {p0, p1}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/inmobi/media/vb;

    invoke-direct {v0, p1}, Lcom/inmobi/media/vb;-><init>(Lcom/inmobi/adquality/models/AdQualityResult;)V

    new-instance p1, Lcom/inmobi/media/i0;

    invoke-direct {p1, p0, p2}, Lcom/inmobi/media/i0;-><init>(Lcom/inmobi/media/o0;Z)V

    sget-object p2, Lcom/inmobi/media/j0;->a:Lcom/inmobi/media/j0;

    .line 12
    const-string v1, "process"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "shouldProcess"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v1, Lcom/inmobi/media/f0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/inmobi/media/d;

    invoke-direct {v1, p2, v0, p1}, Lcom/inmobi/media/d;-><init>(Lkotlin/jvm/functions/Function0;Lcom/inmobi/media/p0;Lcom/inmobi/media/Va;)V

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v1}, Lcom/inmobi/media/f0;->a(JLcom/inmobi/media/d;)V

    return-void
.end method

.method public final a(Lcom/inmobi/media/ec;JZLcom/inmobi/media/Jb;)V
    .locals 8

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isCapture started - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/media/o0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isReporting - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/inmobi/media/o0;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "Screenshot process already in progress... skipping..."

    const/4 p2, 0x0

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/inmobi/media/o0;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    new-instance v7, Lub/m5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lub/m5;-><init>(Lcom/inmobi/media/o0;Landroid/view/View;JZLcom/inmobi/media/Jb;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AdQualityManager"

    if-eqz p1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/inmobi/media/o0;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v0, p2, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/o0;->b:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_2

    .line 80
    const-string v1, "Error with null exception : "

    invoke-static {v1, p2}, Lcom/inmobi/media/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 81
    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/inmobi/media/o0;->b:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "AdQualityManager"

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;[BZ)V
    .locals 2

    .line 43
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/adQuality/screenshots"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/inmobi/media/Dd;

    invoke-direct {v1, v0, p2}, Lcom/inmobi/media/Dd;-><init>(Ljava/lang/String;[B)V

    if-nez p3, :cond_0

    .line 46
    iget-object p2, p0, Lcom/inmobi/media/o0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    new-instance p2, Lcom/inmobi/media/k0;

    invoke-direct {p2, p0, p3, v1, p1}, Lcom/inmobi/media/k0;-><init>(Lcom/inmobi/media/o0;ZLcom/inmobi/media/Dd;Ljava/lang/String;)V

    sget-object p1, Lcom/inmobi/media/l0;->a:Lcom/inmobi/media/l0;

    .line 48
    const-string p3, "process"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "shouldProcess"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p3, Lcom/inmobi/media/f0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Lcom/inmobi/media/d;

    invoke-direct {p3, p1, v1, p2}, Lcom/inmobi/media/d;-><init>(Lkotlin/jvm/functions/Function0;Lcom/inmobi/media/p0;Lcom/inmobi/media/Va;)V

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p3}, Lcom/inmobi/media/f0;->a(JLcom/inmobi/media/d;)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 12

    .line 50
    const-string v0, "AdQualityManager"

    const-string v1, "tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "checking for trigger"

    const-string v3, "message"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v2, p0, Lcom/inmobi/media/o0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/inmobi/adquality/models/AdQualityControl;->getBeacon()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 53
    iget-object v2, p0, Lcom/inmobi/media/o0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/o0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inmobi/media/o0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    iget-object p1, p0, Lcom/inmobi/media/o0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    const-string p1, "session end - queuing result"

    invoke-virtual {p0, p1}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/inmobi/media/o0;->i:Lcom/inmobi/adquality/models/AdQualityResult;

    if-nez p1, :cond_0

    new-instance p1, Lcom/inmobi/adquality/models/AdQualityResult;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-string v5, "null"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/inmobi/adquality/models/AdQualityResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    :cond_0
    invoke-virtual {p0, p1, v11}, Lcom/inmobi/media/o0;->a(Lcom/inmobi/adquality/models/AdQualityResult;Z)V

    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/inmobi/media/o0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    .line 59
    iget-object p1, p0, Lcom/inmobi/media/o0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_4

    .line 60
    iget-object p1, p0, Lcom/inmobi/media/o0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    const-string p1, "session stop - queuing result"

    invoke-virtual {p0, p1}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    .line 62
    sget-object p1, Lcom/inmobi/media/f0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p1, :cond_2

    .line 63
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 64
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    :catch_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 66
    const-string v0, "AdQualityComponent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "shutdown fail"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 69
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/inmobi/media/o0;->i:Lcom/inmobi/adquality/models/AdQualityResult;

    if-nez p1, :cond_3

    new-instance p1, Lcom/inmobi/adquality/models/AdQualityResult;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-string v5, "null"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/inmobi/adquality/models/AdQualityResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 70
    :cond_3
    invoke-virtual {p0, p1, v11}, Lcom/inmobi/media/o0;->a(Lcom/inmobi/adquality/models/AdQualityResult;Z)V

    return-void

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "list size - "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/media/o0;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " session end triggered - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v2, p0, Lcom/inmobi/media/o0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 73
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " queue triggered - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v2, p0, Lcom/inmobi/media/o0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " waiting"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/o0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "ad quality session is already in progress. skipping..."

    invoke-virtual {p0, v0}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/o0;->a:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    const-string v0, "config kill switch - false. ad quality will skip"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/o0;->g:Lcom/inmobi/adquality/models/AdQualityControl;

    if-nez v0, :cond_2

    .line 6
    const-string v0, "setup not done. skipping"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    return v1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/o0;->h:Lcom/inmobi/media/df;

    sget-object v2, Lcom/inmobi/media/df;->a:Lcom/inmobi/media/df;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/inmobi/media/df;->b:Lcom/inmobi/media/df;

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    .line 8
    :cond_4
    :goto_0
    const-string v0, "ad view is not visible. skipping"

    invoke-virtual {p0, v0}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    return v1
.end method
