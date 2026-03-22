.class public final synthetic Lyn/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/bidmachine/media3/exoplayer/video/p$a;

.field public final synthetic b:Lio/bidmachine/media3/common/a;

.field public final synthetic c:Lgn/c;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/p$a;Lio/bidmachine/media3/common/a;Lgn/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyn/m;->a:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 5
    .line 6
    iput-object p2, p0, Lyn/m;->b:Lio/bidmachine/media3/common/a;

    .line 7
    .line 8
    iput-object p3, p0, Lyn/m;->c:Lgn/c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyn/m;->a:Lio/bidmachine/media3/exoplayer/video/p$a;

    .line 2
    .line 3
    iget-object v1, p0, Lyn/m;->b:Lio/bidmachine/media3/common/a;

    .line 4
    .line 5
    iget-object v2, p0, Lyn/m;->c:Lgn/c;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/video/p$a;->b(Lio/bidmachine/media3/exoplayer/video/p$a;Lio/bidmachine/media3/common/a;Lgn/c;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
