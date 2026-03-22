.class public final synthetic Lio/bidmachine/media3/exoplayer/v0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:Lio/bidmachine/media3/exoplayer/u0;

.field public final synthetic d:Lhn/b2;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLio/bidmachine/media3/exoplayer/u0;Lhn/b2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/v0;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/v0;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/v0;->c:Lio/bidmachine/media3/exoplayer/u0;

    .line 9
    .line 10
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/v0;->d:Lhn/b2;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/v0;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/v0;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/v0;->c:Lio/bidmachine/media3/exoplayer/u0;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/v0;->d:Lhn/b2;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/u0$b;->a(Landroid/content/Context;ZLio/bidmachine/media3/exoplayer/u0;Lhn/b2;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
