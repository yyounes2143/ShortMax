.class public abstract Lcom/inmobi/media/Xe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/x;

.field public b:Lcom/inmobi/media/x8;

.field public c:Ljava/lang/ref/WeakReference;

.field public final d:Lcom/inmobi/commons/core/configs/AdConfig;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/x;)V
    .locals 1

    .line 1
    const-string v0, "container"

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
    iput-object p1, p0, Lcom/inmobi/media/Xe;->a:Lcom/inmobi/media/x;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/inmobi/media/x;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/inmobi/media/Xe;->d:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Xe;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    return-void
.end method

.method public abstract a(B)V
.end method

.method public abstract a(Landroid/content/Context;B)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Lcom/iab/omid/library/inmobi/adsession/FriendlyObstructionPurpose;)V
.end method

.method public abstract a(Ljava/util/Map;)V
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Xe;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/View;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public c()Lcom/inmobi/media/x8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Xe;->b:Lcom/inmobi/media/x8;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract e()V
.end method
