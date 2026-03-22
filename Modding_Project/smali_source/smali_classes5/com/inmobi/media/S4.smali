.class public final Lcom/inmobi/media/S4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Lcom/inmobi/media/P4;


# instance fields
.field public final a:B

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lcom/inmobi/media/z5;

.field public g:Lcom/inmobi/media/g5;

.field public h:Lcom/inmobi/media/X4;

.field public final i:Ljava/util/LinkedHashMap;

.field public final j:Lcom/inmobi/media/Q4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/P4;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/P4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/S4;->k:Lcom/inmobi/media/P4;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;IIILcom/inmobi/media/z5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-byte p1, p0, Lcom/inmobi/media/S4;->a:B

    .line 5
    .line 6
    iput-object p2, p0, Lcom/inmobi/media/S4;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/inmobi/media/S4;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/inmobi/media/S4;->d:I

    .line 11
    .line 12
    iput p5, p0, Lcom/inmobi/media/S4;->e:I

    .line 13
    .line 14
    iput-object p6, p0, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    .line 15
    .line 16
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/inmobi/media/S4;->i:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    new-instance p1, Lcom/inmobi/media/Q4;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/inmobi/media/Q4;-><init>(Lcom/inmobi/media/S4;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/inmobi/media/S4;->j:Lcom/inmobi/media/Q4;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    const-string v2, "HtmlAdTracker"

    if-eqz v1, :cond_0

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v3, "stopTrackingForImpression"

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/S4;->b:Ljava/lang/String;

    const-string v3, "video"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/S4;->b:Ljava/lang/String;

    const-string v3, "audio"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/S4;->g:Lcom/inmobi/media/g5;

    if-eqz v1, :cond_4

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, v1, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, v1, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, v1, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/lf;->a(Landroid/view/View;)V

    .line 9
    iget-object p1, v1, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "Impression tracker is free, removing it"

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/S4;->g:Lcom/inmobi/media/g5;

    if-eqz p1, :cond_3

    .line 12
    iget-object v0, p1, Lcom/inmobi/media/g5;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 13
    iget-object v0, p1, Lcom/inmobi/media/g5;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 14
    iget-object v0, p1, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {v0}, Lcom/inmobi/media/lf;->a()V

    .line 15
    iget-object v0, p1, Lcom/inmobi/media/g5;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    iget-object p1, p1, Lcom/inmobi/media/g5;->c:Lcom/inmobi/media/lf;

    invoke-virtual {p1}, Lcom/inmobi/media/lf;->b()V

    :cond_3
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/inmobi/media/S4;->g:Lcom/inmobi/media/g5;

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;Lcom/inmobi/media/ef;Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;Z)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "HtmlAdTracker"

    const-string v2, "startTrackingForVisibility"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/S4;->h:Lcom/inmobi/media/X4;

    if-nez v0, :cond_2

    if-eqz p5, :cond_1

    .line 20
    new-instance v0, Lcom/inmobi/media/D2;

    .line 21
    iget-object v1, p0, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    .line 22
    invoke-direct {v0, p4, v1}, Lcom/inmobi/media/D2;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;Lcom/inmobi/media/z5;)V

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lcom/inmobi/media/X4;

    .line 24
    iget-object v1, p0, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    const/4 v2, 0x1

    .line 25
    invoke-direct {v0, p4, v2, v1}, Lcom/inmobi/media/X4;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;BLcom/inmobi/media/z5;)V

    .line 26
    :goto_0
    iput-object v0, p0, Lcom/inmobi/media/S4;->h:Lcom/inmobi/media/X4;

    .line 27
    :cond_2
    new-instance v1, Lcom/inmobi/media/R4;

    invoke-direct {v1, p0}, Lcom/inmobi/media/R4;-><init>(Lcom/inmobi/media/S4;)V

    .line 28
    iget-object v2, v0, Lcom/inmobi/media/lf;->e:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_3

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v3, "VisibilityTracker"

    const-string v4, "setVisibilityTrackerListener logger"

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_3
    iput-object v1, v0, Lcom/inmobi/media/lf;->j:Lcom/inmobi/media/hf;

    .line 30
    iget-object v1, p0, Lcom/inmobi/media/S4;->i:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_4

    .line 31
    invoke-virtual {p4}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getCompanionVisibilityMinPercentageViewed()I

    move-result p3

    goto :goto_1

    .line 32
    :cond_4
    iget p3, p0, Lcom/inmobi/media/S4;->e:I

    .line 33
    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/media/lf;->a(Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    const-string v1, "HtmlAdTracker"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    .line 13
    .line 14
    const-string v2, "stopTrackingForVisibility"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/S4;->h:Lcom/inmobi/media/X4;

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/inmobi/media/lf;->a(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lcom/inmobi/media/lf;->a:Ljava/util/WeakHashMap;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/inmobi/media/S4;->f:Lcom/inmobi/media/z5;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    check-cast v0, Lcom/inmobi/media/A5;

    .line 39
    .line 40
    const-string v2, "Visibility tracker is free, removing it"

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/S4;->h:Lcom/inmobi/media/X4;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/inmobi/media/lf;->b()V

    .line 50
    .line 51
    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/inmobi/media/S4;->h:Lcom/inmobi/media/X4;

    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/S4;->i:Ljava/util/LinkedHashMap;

    .line 56
    .line 57
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void
.end method
