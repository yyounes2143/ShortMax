.class public final Lcom/inmobi/media/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/N2;


# static fields
.field public static a:Ljava/util/concurrent/ScheduledExecutorService;

.field public static b:Ljava/util/concurrent/ExecutorService;

.field public static final c:Lms/i;

.field public static d:Lcom/inmobi/media/d0;

.field public static e:Lcom/inmobi/commons/core/configs/AdConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/inmobi/media/f0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/f0;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/inmobi/media/e0;->a:Lcom/inmobi/media/e0;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lcom/inmobi/media/f0;->c:Lms/i;

    .line 13
    .line 14
    sget-object v1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 15
    .line 16
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "ads"

    .line 21
    .line 22
    invoke-static {v2, v1, v0}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v0, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 32
    .line 33
    sput-object v0, Lcom/inmobi/media/f0;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(JLcom/inmobi/media/d;)V
    .locals 2

    const-string v0, "execute"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/f0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/inmobi/media/K5;

    const-string v1, "AdQualityComponent-aqHandler"

    invoke-direct {v0, v1}, Lcom/inmobi/media/K5;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, "newScheduledThreadPool(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/media/f0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    :cond_1
    sget-object v0, Lcom/inmobi/media/f0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_2

    const-string v0, "aqHandlerExecutor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    new-instance v1, Lub/f4;

    invoke-direct {v1, p2}, Lub/f4;-><init>(Lkotlin/jvm/functions/Function0;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p0, p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/inmobi/media/ec;Ljava/lang/String;ZLorg/json/JSONObject;Lcom/inmobi/media/Jb;)V
    .locals 10

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "renderView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "extras"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "listener"

    invoke-static {p5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getAdQualityManager()Lcom/inmobi/media/o0;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p4}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 31
    iput-object p2, v4, Lcom/inmobi/media/o0;->j:Ljava/lang/String;

    .line 32
    iput-object p4, v4, Lcom/inmobi/media/o0;->k:Lorg/json/JSONObject;

    .line 33
    const-string v0, "report ad starting"

    invoke-virtual {v4, v0}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 34
    const-string p3, "report ad capture"

    invoke-virtual {v4, p3}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v5, p0

    move-object v9, p5

    .line 35
    invoke-virtual/range {v4 .. v9}, Lcom/inmobi/media/o0;->a(Landroid/app/Activity;JZLcom/inmobi/media/Jb;)V

    goto :goto_0

    .line 36
    :cond_0
    const-string p0, "report ad report"

    invoke-virtual {v4, p0}, Lcom/inmobi/media/o0;->a(Ljava/lang/String;)V

    .line 37
    new-instance p0, Lcom/inmobi/adquality/models/AdQualityResult;

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, ""

    invoke-direct {p0, p4, v1, p2, p3}, Lcom/inmobi/adquality/models/AdQualityResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {v4, p0, p3}, Lcom/inmobi/media/o0;->a(Lcom/inmobi/adquality/models/AdQualityResult;Z)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object p0, p5, Lcom/inmobi/media/Jb;->a:Lcom/inmobi/media/ec;

    const-string p3, "window.mraidview.broadcastEvent(\'AdReportFailed\')"

    invoke-virtual {p0, p3}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Incorrect parameters for reporting. url - "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " , extras - "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-virtual {v4, v1, p0}, Lcom/inmobi/media/o0;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 41
    :goto_0
    sget-object p0, Lcom/inmobi/media/f0;->d:Lcom/inmobi/media/d0;

    if-nez p0, :cond_2

    const-string p0, "executor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "beaconUrl"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p0, v1, Lcom/inmobi/media/d0;->d:Ljava/util/HashMap;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getCreativeID()Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 45
    sget-object p1, Lcom/inmobi/media/f0;->c:Lms/i;

    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    sget-object p3, Lcom/inmobi/media/f0;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/AdConfig;->getAdReport()Lcom/inmobi/commons/core/configs/AdConfig$AdReportConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/AdConfig$AdReportConfig;->getCridls()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 47
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static a(Lcom/inmobi/media/c;)V
    .locals 2

    const-string v0, "execute"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/inmobi/media/f0;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :cond_0
    new-instance v0, Lcom/inmobi/media/K5;

    const-string v1, "AdQualityComponent-aqBeacon"

    invoke-direct {v0, v1}, Lcom/inmobi/media/K5;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/media/f0;->b:Ljava/util/concurrent/ExecutorService;

    .line 6
    :cond_1
    sget-object v0, Lcom/inmobi/media/f0;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    const-string v0, "aqBeaconExecutor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    new-instance v1, Lub/g4;

    invoke-direct {v1, p0}, Lub/g4;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static a(Lcom/inmobi/media/ec;Lcom/inmobi/media/ec;Ljava/lang/String;ZLorg/json/JSONObject;Lcom/inmobi/media/Jb;)V
    .locals 9

    const-string v0, "adView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "extras"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getAdQualityManager()Lcom/inmobi/media/o0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "view"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p4}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 52
    iput-object p2, v3, Lcom/inmobi/media/o0;->j:Ljava/lang/String;

    .line 53
    iput-object p4, v3, Lcom/inmobi/media/o0;->k:Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-object v4, p0

    move-object v8, p5

    .line 54
    invoke-virtual/range {v3 .. v8}, Lcom/inmobi/media/o0;->a(Lcom/inmobi/media/ec;JZLcom/inmobi/media/Jb;)V

    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Lcom/inmobi/adquality/models/AdQualityResult;

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, ""

    invoke-direct {p0, p4, v1, p2, p3}, Lcom/inmobi/adquality/models/AdQualityResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {v3, p0, p3}, Lcom/inmobi/media/o0;->a(Lcom/inmobi/adquality/models/AdQualityResult;Z)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p0, p5, Lcom/inmobi/media/Jb;->a:Lcom/inmobi/media/ec;

    const-string p3, "window.mraidview.broadcastEvent(\'AdReportFailed\')"

    invoke-virtual {p0, p3}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Incorrect parameters for reporting. url - "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " , extras - "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-virtual {v3, v1, p0}, Lcom/inmobi/media/o0;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 59
    :goto_0
    sget-object p0, Lcom/inmobi/media/f0;->d:Lcom/inmobi/media/d0;

    if-nez p0, :cond_2

    const-string p0, "executor"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "beaconUrl"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p0, v1, Lcom/inmobi/media/d0;->d:Ljava/util/HashMap;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getCreativeID()Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 63
    sget-object p1, Lcom/inmobi/media/f0;->c:Lms/i;

    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p2

    sget-object p3, Lcom/inmobi/media/f0;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/AdConfig;->getAdReport()Lcom/inmobi/commons/core/configs/AdConfig$AdReportConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/inmobi/commons/core/configs/AdConfig$AdReportConfig;->getCridls()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 65
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    const-string v0, "$tmp0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of v0, p1, Lcom/inmobi/commons/core/configs/AdConfig;

    if-eqz v0, :cond_1

    .line 9
    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    sput-object p1, Lcom/inmobi/media/f0;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 10
    sget-object v0, Lcom/inmobi/media/f0;->d:Lcom/inmobi/media/d0;

    if-eqz v0, :cond_1

    .line 11
    const-string v1, "adConfig"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, v0, Lcom/inmobi/media/d0;->a:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 13
    iget-object v1, v0, Lcom/inmobi/media/d0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getAdQuality()Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;->getEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/inmobi/media/d0;->a()V

    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/inmobi/media/d0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getAdQuality()Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;->getEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    const-string p1, "AdQualityBeaconExecutor"

    const-string v1, "tag"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kill switch encountered. shut down."

    const-string v3, "message"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, v0, Lcom/inmobi/media/d0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    sget-object p1, Lcom/inmobi/media/f0;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 23
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 24
    :catch_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 25
    const-string v0, "AdQualityComponent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "shutdown fail"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_1
    return-void
.end method
