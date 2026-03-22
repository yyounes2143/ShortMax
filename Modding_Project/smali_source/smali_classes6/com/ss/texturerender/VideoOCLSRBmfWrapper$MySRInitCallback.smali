.class Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;
.super Ljava/lang/Object;
.source "VideoOCLSRBmfWrapper.java"

# interfaces
.implements Lcom/bytedance/bmf_mods_lite_api/callback/SRInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/VideoOCLSRBmfWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MySRInitCallback"
.end annotation


# instance fields
.field private final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/texturerender/VideoOCLSRBmfWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/texturerender/VideoOCLSRBmfWrapper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;->mRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onInitResult(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper$MySRInitCallback;->mRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p1, "VideoOCLSRBmfWrapper"

    .line 12
    .line 13
    const-string p2, "bmf on initResult fail vst is null"

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    invoke-static {v0, p1, p2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ss/texturerender/VideoOCLSRBmfWrapper;->onSRAsyncInitResult(II)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
