.class public final Lcom/inmobi/media/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/browser/customtabs/EngagementSignalsCallback;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/k2;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/k2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/j2;->a:Lcom/inmobi/media/k2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p1, "extras"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSessionEnded(ZLandroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "extras"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "IN_NATIVE_BROWSER"

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/inmobi/media/j2;->a:Lcom/inmobi/media/k2;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/inmobi/media/e2;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string v0, "onInteraction"

    .line 28
    .line 29
    invoke-static {p2, v0}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p1, v0}, Lcom/inmobi/media/e2;->a(Lorg/json/JSONObject;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/j2;->a:Lcom/inmobi/media/k2;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/inmobi/media/e2;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    sget-object v0, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v0, "onClose"

    .line 54
    .line 55
    invoke-static {p2, v0}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-interface {p1, p2}, Lcom/inmobi/media/e2;->a(Lorg/json/JSONObject;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string p1, "extras"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/j2;->a:Lcom/inmobi/media/k2;

    .line 7
    .line 8
    iget-boolean p2, p1, Lcom/inmobi/media/k2;->h:Z

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p1, Lcom/inmobi/media/k2;->h:Z

    .line 14
    .line 15
    iget-object p1, p1, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/inmobi/media/e2;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    sget-object p2, Lcom/inmobi/media/ec;->Y0:Lcom/inmobi/media/Gb;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    const-string p2, "IN_NATIVE_BROWSER"

    .line 31
    .line 32
    const-string v0, "onScroll"

    .line 33
    .line 34
    invoke-static {p2, v0}, Lcom/inmobi/media/Gb;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p1, p2}, Lcom/inmobi/media/e2;->a(Lorg/json/JSONObject;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
