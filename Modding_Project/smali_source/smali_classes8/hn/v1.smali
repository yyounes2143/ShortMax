.class public final synthetic Lhn/v1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhn/z1;

.field public final synthetic b:Landroid/media/metrics/PlaybackMetrics;


# direct methods
.method public synthetic constructor <init>(Lhn/z1;Landroid/media/metrics/PlaybackMetrics;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhn/v1;->a:Lhn/z1;

    .line 5
    .line 6
    iput-object p2, p0, Lhn/v1;->b:Landroid/media/metrics/PlaybackMetrics;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhn/v1;->a:Lhn/z1;

    .line 2
    .line 3
    iget-object v1, p0, Lhn/v1;->b:Landroid/media/metrics/PlaybackMetrics;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhn/z1;->A0(Lhn/z1;Landroid/media/metrics/PlaybackMetrics;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
