.class final Lio/bidmachine/ViewAdObject$c;
.super Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;
.source "ViewAdObject.java"

# interfaces
.implements Lxq/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ViewAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/ViewAdObject<",
            "***>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/ViewAdObject;Lio/bidmachine/AdProcessCallback;)V
    .locals 0
    .param p1    # Lio/bidmachine/ViewAdObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ViewAdObject<",
            "***>;",
            "Lio/bidmachine/AdProcessCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;-><init>(Lio/bidmachine/AdProcessCallback;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lio/bidmachine/ViewAdObject$c;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onAdLoaded(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ViewAdObject$c;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/ViewAdObject;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0, p1}, Lio/bidmachine/ViewAdObject;->access$000(Lio/bidmachine/ViewAdObject;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 15
    .line 16
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 21
    .line 22
    const-string v0, "ViewAdObject is null"

    .line 23
    .line 24
    invoke-static {v0}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p1, v0}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lfr/a;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
