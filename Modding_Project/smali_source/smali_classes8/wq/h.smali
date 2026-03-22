.class public Lwq/h;
.super Lwq/l;
.source "SessionTrackingObject.java"


# instance fields
.field private final sessionTracker:Lwq/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lwq/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lwq/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lwq/l;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lwq/h;->sessionTracker:Lwq/f;

    return-void
.end method

.method public constructor <init>(Lwq/f;)V
    .locals 1
    .param p1    # Lwq/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lwq/h;-><init>(Ljava/lang/Object;Lwq/f;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwq/h;->sessionTracker:Lwq/f;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lwq/f;->c(Lwq/k;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clearEvent(Lio/bidmachine/TrackEventType;)V
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lwq/h;->sessionTracker:Lwq/f;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Lwq/f;->d(Lwq/k;Lio/bidmachine/TrackEventType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V
    .locals 6
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lwq/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lwq/h;->sessionTracker:Lwq/f;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    move-object v2, p1

    .line 5
    move-object v3, p2

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p3

    .line 8
    invoke-interface/range {v0 .. v5}, Lwq/f;->e(Lwq/k;Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lfr/a;Lwq/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public eventStart(Lio/bidmachine/TrackEventType;Lwq/j;)V
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lwq/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lwq/h;->sessionTracker:Lwq/f;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1, p2}, Lwq/f;->b(Lwq/k;Lio/bidmachine/TrackEventType;Lwq/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
