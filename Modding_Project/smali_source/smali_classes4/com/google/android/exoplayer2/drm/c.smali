.class public final synthetic Lcom/google/android/exoplayer2/drm/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lb7/h;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/c;->a:Ljava/lang/Exception;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/c;->a:Ljava/lang/Exception;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/exoplayer2/drm/h$a;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->h(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/h$a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
