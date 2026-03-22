.class Lcom/ss/ttvideoengine/DataLoaderHelper$1;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"

# interfaces
.implements Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;->initInternal()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$1;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public loadLibrary(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$1;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$300(Lcom/ss/ttvideoengine/DataLoaderHelper;)Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$1;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$300(Lcom/ss/ttvideoengine/DataLoaderHelper;)Lcom/ss/ttvideoengine/LibraryLoaderProxy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/LibraryLoaderProxy;->loadLibrary(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$1;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$400(Lcom/ss/ttvideoengine/DataLoaderHelper;)Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$1;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$400(Lcom/ss/ttvideoengine/DataLoaderHelper;)Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->loadLibrary(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    return p1
.end method
