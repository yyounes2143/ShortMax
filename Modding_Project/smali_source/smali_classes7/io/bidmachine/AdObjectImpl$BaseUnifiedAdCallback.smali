.class public Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;
.super Ljava/lang/Object;
.source "AdObjectImpl.java"

# interfaces
.implements Lxq/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdObjectImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseUnifiedAdCallback"
.end annotation


# instance fields
.field protected final processCallback:Lio/bidmachine/AdProcessCallback;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/AdProcessCallback;)V
    .locals 0
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processClicked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdExpired()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processExpired()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdLoadFailed(Lfr/a;)V
    .locals 1
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdShowFailed(Lfr/a;)V
    .locals 1
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdShown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processShown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onBrokenCreativeEvent(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->onBrokenCreativeEvent(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V
    .locals 1
    .param p1    # Lio/bidmachine/core/VisibilitySource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
