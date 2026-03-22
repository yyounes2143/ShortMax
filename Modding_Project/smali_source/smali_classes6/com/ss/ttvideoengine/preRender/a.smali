.class public final synthetic Lcom/ss/ttvideoengine/preRender/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ss/ttvideoengine/preRender/SourceCacheListener;


# instance fields
.field public final synthetic a:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/preRender/a;->a:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCacheSize(Lcom/ss/ttvideoengine/source/Source;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/preRender/a;->a:Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;->a(Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithmDefault;Lcom/ss/ttvideoengine/source/Source;J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
