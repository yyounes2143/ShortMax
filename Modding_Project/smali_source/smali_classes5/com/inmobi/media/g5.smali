.class public final Lcom/inmobi/media/g5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/WeakHashMap;

.field public final b:Ljava/util/WeakHashMap;

.field public final c:Lcom/inmobi/media/lf;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/os/Handler;

.field public final f:Lcom/inmobi/media/f5;

.field public final g:J

.field public final h:Lcom/inmobi/media/d5;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;Lcom/inmobi/media/lf;Lcom/inmobi/media/d5;)V
    .locals 4

    .line 1
    const-string v0, "viewabilityConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "visibilityTracker"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listener"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/WeakHashMap;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v2, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    .line 43
    .line 44
    const-class v0, Lcom/inmobi/media/g5;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/inmobi/media/g5;->d:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getImpressionPollIntervalMillis()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    int-to-long v0, p1

    .line 57
    iput-wide v0, p0, Lcom/inmobi/media/g5;->g:J

    .line 58
    .line 59
    new-instance p1, Lcom/inmobi/media/c5;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Lcom/inmobi/media/c5;-><init>(Lcom/inmobi/media/g5;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p2, Lcom/inmobi/media/lf;->e:Lcom/inmobi/media/z5;

    .line 65
    .line 66
    if-eqz v0, :cond_0

    .line 67
    .line 68
    check-cast v0, Lcom/inmobi/media/A5;

    .line 69
    .line 70
    const-string v1, "VisibilityTracker"

    .line 71
    .line 72
    const-string v3, "setVisibilityTrackerListener logger"

    .line 73
    .line 74
    invoke-virtual {v0, v1, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    iput-object p1, p2, Lcom/inmobi/media/lf;->j:Lcom/inmobi/media/hf;

    .line 78
    .line 79
    iput-object v2, p0, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    .line 80
    .line 81
    new-instance p1, Lcom/inmobi/media/f5;

    .line 82
    .line 83
    invoke-direct {p1, p0}, Lcom/inmobi/media/f5;-><init>(Lcom/inmobi/media/g5;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/inmobi/media/g5;->f:Lcom/inmobi/media/f5;

    .line 87
    .line 88
    iput-object p3, p0, Lcom/inmobi/media/g5;->h:Lcom/inmobi/media/d5;

    .line 89
    .line 90
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/lf;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;II)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/e5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/e5;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/g5;->a(Landroid/view/View;)V

    .line 5
    new-instance v0, Lcom/inmobi/media/e5;

    invoke-direct {v0, p2, p3, p4}, Lcom/inmobi/media/e5;-><init>(Ljava/lang/Object;II)V

    .line 6
    iget-object p4, p0, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p4, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p4, p0, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {p4, p1, p2, p3}, Lcom/inmobi/media/lf;->a(Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method
