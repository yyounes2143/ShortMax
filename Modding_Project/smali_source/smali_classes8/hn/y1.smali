.class public final synthetic Lhn/y1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhn/z1;

.field public final synthetic b:Landroid/media/metrics/PlaybackErrorEvent;


# direct methods
.method public synthetic constructor <init>(Lhn/z1;Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhn/y1;->a:Lhn/z1;

    .line 5
    .line 6
    iput-object p2, p0, Lhn/y1;->b:Landroid/media/metrics/PlaybackErrorEvent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lhn/y1;->a:Lhn/z1;

    .line 2
    .line 3
    iget-object v1, p0, Lhn/y1;->b:Landroid/media/metrics/PlaybackErrorEvent;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhn/z1;->C0(Lhn/z1;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
