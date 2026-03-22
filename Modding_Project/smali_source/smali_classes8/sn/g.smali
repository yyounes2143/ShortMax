.class public final synthetic Lsn/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lao/u;


# instance fields
.field public final synthetic b:Lio/bidmachine/media3/exoplayer/source/i;

.field public final synthetic c:Lio/bidmachine/media3/common/a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/source/i;Lio/bidmachine/media3/common/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsn/g;->b:Lio/bidmachine/media3/exoplayer/source/i;

    .line 5
    .line 6
    iput-object p2, p0, Lsn/g;->c:Lio/bidmachine/media3/common/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createExtractors()[Lao/p;
    .locals 2

    .line 1
    iget-object v0, p0, Lsn/g;->b:Lio/bidmachine/media3/exoplayer/source/i;

    .line 2
    .line 3
    iget-object v1, p0, Lsn/g;->c:Lio/bidmachine/media3/common/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/source/i;->h(Lio/bidmachine/media3/exoplayer/source/i;Lio/bidmachine/media3/common/a;)[Lao/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
