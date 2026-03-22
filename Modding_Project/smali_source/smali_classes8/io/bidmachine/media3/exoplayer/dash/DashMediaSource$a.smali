.class Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lxn/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method constructor <init>(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;->a:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;->a:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->E(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;Ljava/io/IOException;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onInitialized()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource$a;->a:Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;

    .line 2
    .line 3
    invoke-static {}, Lxn/b;->i()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;->D(Lio/bidmachine/media3/exoplayer/dash/DashMediaSource;J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
