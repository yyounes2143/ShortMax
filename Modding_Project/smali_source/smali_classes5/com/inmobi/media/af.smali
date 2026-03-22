.class public final Lcom/inmobi/media/af;
.super Lcom/inmobi/media/Xe;
.source "SourceFile"


# instance fields
.field public final e:Lcom/inmobi/media/ec;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;)V
    .locals 1

    .line 1
    const-string v0, "mRenderView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/inmobi/media/Xe;-><init>(Lcom/inmobi/media/x;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/af;->e:Lcom/inmobi/media/ec;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 0

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/af;->d()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(B)V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Landroid/content/Context;B)V
    .locals 0

    .line 3
    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/inmobi/media/af;->e:Lcom/inmobi/media/ec;

    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getFriendlyViews()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/af;->e:Lcom/inmobi/media/ec;

    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getExposureTracker()Lcom/inmobi/media/I;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    const-string v1, "view"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Lcom/inmobi/media/I;->e:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Removing friendly view: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v3, "AdExposureTracker"

    invoke-virtual {v1, v3, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_1
    iget-object v0, v0, Lcom/inmobi/media/I;->b:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/inmobi/media/af;->e:Lcom/inmobi/media/ec;

    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getWebViewFactory()Lcom/inmobi/media/tf;

    move-result-object v0

    new-instance v1, Lcom/inmobi/media/Ze;

    invoke-direct {v1, p1}, Lcom/inmobi/media/Ze;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/media/tf;->b(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V
    .locals 3

    const-string v0, "childView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obstructionCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/af;->e:Lcom/inmobi/media/ec;

    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getFriendlyViews()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/inmobi/media/af;->e:Lcom/inmobi/media/ec;

    invoke-virtual {p2}, Lcom/inmobi/media/ec;->getExposureTracker()Lcom/inmobi/media/I;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 7
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p2, Lcom/inmobi/media/I;->e:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding friendly view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "AdExposureTracker"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object p2, p2, Lcom/inmobi/media/I;->b:Ljava/util/Set;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/inmobi/media/af;->e:Lcom/inmobi/media/ec;

    invoke-virtual {p2}, Lcom/inmobi/media/ec;->getWebViewFactory()Lcom/inmobi/media/tf;

    move-result-object p2

    new-instance v0, Lcom/inmobi/media/Ye;

    invoke-direct {v0, p1}, Lcom/inmobi/media/Ye;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/inmobi/media/tf;->b(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final d()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/af;->e:Lcom/inmobi/media/ec;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput-object v1, p0, Lcom/inmobi/media/Xe;->c:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/inmobi/media/af;->e:Lcom/inmobi/media/ec;

    .line 11
    .line 12
    return-object v0
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method
