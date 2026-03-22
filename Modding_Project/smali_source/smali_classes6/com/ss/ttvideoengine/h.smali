.class public final synthetic Lcom/ss/ttvideoengine/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ss/texturerender/VideoSurface$SaveFrameCallback;
.implements Ljava/io/Serializable;


# instance fields
.field public final synthetic a:Lcom/ss/ttvideoengine/SnapshotListener;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/ttvideoengine/SnapshotListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/h;->a:Lcom/ss/ttvideoengine/SnapshotListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFrame(Ljava/nio/ByteBuffer;II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/h;->a:Lcom/ss/ttvideoengine/SnapshotListener;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/TTVideoEngineImpl;->b(Lcom/ss/ttvideoengine/SnapshotListener;Ljava/nio/ByteBuffer;II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
