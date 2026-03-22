.class Lio/bidmachine/k2;
.super Lwq/g;
.source "BidMachineSessionTracker.java"


# instance fields
.field private final c:Lio/bidmachine/a2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lwq/b;)V
    .locals 0
    .param p1    # Lwq/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lwq/g;-><init>(Lwq/b;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lio/bidmachine/a2;

    .line 5
    .line 6
    invoke-direct {p1}, Lio/bidmachine/a2;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/bidmachine/k2;->c:Lio/bidmachine/a2;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lwq/k;Lio/bidmachine/TrackEventType;Lwq/j;Lio/bidmachine/AdsType;Lfr/a;Lwq/a;)V
    .locals 7
    .param p1    # Lwq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lwq/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lwq/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super/range {p0 .. p6}, Lwq/g;->a(Lwq/k;Lio/bidmachine/TrackEventType;Lwq/j;Lio/bidmachine/AdsType;Lfr/a;Lwq/a;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/k2;->c:Lio/bidmachine/a2;

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p5

    .line 11
    move-object v6, p6

    .line 12
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/a2;->a(Lwq/k;Lio/bidmachine/TrackEventType;Lwq/j;Lio/bidmachine/AdsType;Lfr/a;Lwq/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
