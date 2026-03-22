.class public abstract Lio/bidmachine/AdObjectImpl;
.super Ljava/lang/Object;
.source "AdObjectImpl.java"

# interfaces
.implements Llp/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;*TUnifiedAdRequestParamsType;>;AdObjectParamsType:",
        "Llp/b;",
        "UnifiedAdType:",
        "Lxq/b<",
        "TUnifiedAdCallbackType;TUnifiedAdRequestParamsType;>;UnifiedAdCallbackType::",
        "Lxq/c;",
        "UnifiedAdRequestParamsType::",
        "Lxq/d;",
        ">",
        "Ljava/lang/Object;",
        "Llp/a<",
        "TAdObjectParamsType;TUnifiedAdRequestParamsType;TUnifiedAdCallbackType;>;"
    }
.end annotation


# instance fields
.field private final adObjectParams:Llp/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdObjectParamsType;"
        }
    .end annotation
.end field

.field private final adRequest:Lio/bidmachine/AdRequest;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field private final contextProvider:Lio/bidmachine/ContextProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final processCallback:Lio/bidmachine/AdProcessCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final unifiedAd:Lxq/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdType;"
        }
    .end annotation
.end field

.field private final unifiedAdCallback:Lxq/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdCallbackType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Llp/b;Lxq/b;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Llp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lxq/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/AdProcessCallback;",
            "TAdRequestType;TAdObjectParamsType;TUnifiedAdType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/AdObjectImpl;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/AdObjectImpl;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/AdObjectImpl;->adRequest:Lio/bidmachine/AdRequest;

    .line 9
    .line 10
    iput-object p4, p0, Lio/bidmachine/AdObjectImpl;->adObjectParams:Llp/b;

    .line 11
    .line 12
    iput-object p5, p0, Lio/bidmachine/AdObjectImpl;->unifiedAd:Lxq/b;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lio/bidmachine/AdObjectImpl;->createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lxq/c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lio/bidmachine/AdObjectImpl;->unifiedAdCallback:Lxq/c;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public abstract synthetic createUnifiedCallback(Lio/bidmachine/AdProcessCallback;)Lxq/c;
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/ContextProvider;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAdRequest()Lio/bidmachine/AdRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->adRequest:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCustomParams()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lxq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lxq/b;->a()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getParams()Llp/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdObjectParamsType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->adObjectParams:Llp/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProcessCallback()Lio/bidmachine/AdProcessCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnifiedAd()Lxq/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUnifiedAdType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->unifiedAd:Lxq/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnifiedAdCallback()Lxq/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUnifiedAdCallbackType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->unifiedAdCallback:Lxq/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public hide()V
    .locals 0

    .line 1
    return-void
.end method

.method public load(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/NetworkAdUnit;)V
    .locals 6
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/NetworkAdUnit;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl;->unifiedAd:Lxq/b;

    .line 2
    .line 3
    iget-object v2, p0, Lio/bidmachine/AdObjectImpl;->unifiedAdCallback:Lxq/c;

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/AdObjectImpl;->adObjectParams:Llp/b;

    .line 6
    .line 7
    invoke-virtual {v1}, Llp/b;->c()Lxq/k;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    move-object v1, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v5, p3

    .line 14
    invoke-virtual/range {v0 .. v5}, Lxq/b;->b(Lio/bidmachine/ContextProvider;Lxq/c;Lxq/d;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onClicked()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lxq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lxq/b;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onClosed(Z)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lxq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lxq/h;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lxq/h;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lxq/h;->i(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lxq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lxq/b;->d()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onExpired()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lxq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lxq/b;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onFinished()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lxq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lxq/h;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lxq/h;

    .line 10
    .line 11
    invoke-virtual {v0}, Lxq/h;->j()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onImpression()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lxq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lxq/b;->f()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onShowFailed()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lxq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lxq/b;->g()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onShown()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdObjectImpl;->getUnifiedAd()Lxq/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lxq/b;->h()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
