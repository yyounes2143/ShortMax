.class public final Lcom/inmobi/media/F;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/I;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/I;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/F;->a:Lcom/inmobi/media/I;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static final a(Lcom/inmobi/media/I;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/inmobi/media/E;

    invoke-direct {v0, p0}, Lcom/inmobi/media/E;-><init>(Lcom/inmobi/media/I;)V

    invoke-static {v0}, Lcom/inmobi/media/C2;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/inmobi/media/I;->e:Lcom/inmobi/media/z5;

    if-eqz p0, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error calculating exposure metrics - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lcom/inmobi/media/A5;

    const-string v1, "AdExposureTracker"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/F;->a:Lcom/inmobi/media/I;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v1}, Lcom/inmobi/media/L3;->A()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/inmobi/media/I;->e:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_5

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "AdExposureTracker"

    const-string v2, "Cannot calculate curved areas for this Android OS"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_0
    new-instance v2, Lcom/inmobi/media/Df;

    iget-object v3, v0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    iget-object v4, v0, Lcom/inmobi/media/I;->m:Lcom/inmobi/media/H;

    iget-object v5, v0, Lcom/inmobi/media/I;->e:Lcom/inmobi/media/z5;

    .line 6
    const-string v6, "view"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "windowInsetListener"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 7
    invoke-direct {v2, v6, v4, v5}, Lcom/inmobi/media/Df;-><init>(Landroid/app/Activity;Lcom/inmobi/media/Af;Lcom/inmobi/media/z5;)V

    .line 8
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->F()Z

    move-result v1

    const-string v4, "WindowInsetsHandler"

    if-eqz v1, :cond_3

    .line 9
    iput-object v3, v2, Lcom/inmobi/media/Df;->c:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 10
    move-object v1, v5

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v6, "startListeningToInsets"

    invoke-virtual {v1, v4, v6}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    sget-object v1, Lcom/inmobi/media/Df;->g:Ljava/util/WeakHashMap;

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 13
    new-instance v4, Lcom/inmobi/media/zf;

    invoke-direct {v4, v3}, Lcom/inmobi/media/zf;-><init>(Landroid/view/View;)V

    .line 14
    invoke-virtual {v1, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_2
    check-cast v4, Lcom/inmobi/media/zf;

    .line 16
    const-string v3, "listener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v3, v4, Lcom/inmobi/media/zf;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_4

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " created - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v3, "WindowInsetsHandler_INSTANCE"

    invoke-virtual {v5, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    .line 19
    check-cast v5, Lcom/inmobi/media/A5;

    const-string v1, "WindowInsetsHandler is not supported for this version"

    invoke-virtual {v5, v4, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_4
    :goto_0
    iput-object v2, v0, Lcom/inmobi/media/I;->l:Lcom/inmobi/media/Df;

    .line 21
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/F;->a:Lcom/inmobi/media/I;

    .line 22
    iget-object v1, v0, Lcom/inmobi/media/I;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 23
    new-instance v2, Lub/d0;

    invoke-direct {v2, v0}, Lub/d0;-><init>(Lcom/inmobi/media/I;)V

    .line 24
    iget-object v3, p0, Lcom/inmobi/media/F;->a:Lcom/inmobi/media/I;

    .line 25
    iget-wide v5, v3, Lcom/inmobi/media/I;->c:J

    .line 26
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    .line 27
    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/inmobi/media/I;->k:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/F;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
