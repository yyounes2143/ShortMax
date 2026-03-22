.class public final synthetic Ls5/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/h$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/drm/h;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/h$a;Lcom/google/android/exoplayer2/drm/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls5/h;->a:Lcom/google/android/exoplayer2/drm/h$a;

    .line 5
    .line 6
    iput-object p2, p0, Ls5/h;->b:Lcom/google/android/exoplayer2/drm/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls5/h;->a:Lcom/google/android/exoplayer2/drm/h$a;

    .line 2
    .line 3
    iget-object v1, p0, Ls5/h;->b:Lcom/google/android/exoplayer2/drm/h;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/h$a;->c(Lcom/google/android/exoplayer2/drm/h$a;Lcom/google/android/exoplayer2/drm/h;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
