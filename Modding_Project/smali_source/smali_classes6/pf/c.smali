.class public final synthetic Lpf/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;


# instance fields
.field public final synthetic a:Lfk/p;

.field public final synthetic b:Lcom/ss/ttvideoengine/source/DirectUrlSource;


# direct methods
.method public synthetic constructor <init>(Lfk/p;Lcom/ss/ttvideoengine/source/DirectUrlSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpf/c;->a:Lfk/p;

    .line 5
    .line 6
    iput-object p2, p0, Lpf/c;->b:Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lpf/c;->a:Lfk/p;

    .line 2
    .line 3
    iget-object v1, p0, Lpf/c;->b:Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lpf/d;->b(Lfk/p;Lcom/ss/ttvideoengine/source/DirectUrlSource;Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
