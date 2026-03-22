.class Lcom/pandora/ttlicense2/loader/LicenseLoader$1;
.super Ljava/lang/Object;
.source "LicenseLoader.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/loader/LicenseLoader;->startLoad(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pandora/ttlicense2/loader/Loader$Callback<",
        "Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandora/ttlicense2/loader/LicenseLoader;

.field final synthetic val$callback:Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/loader/LicenseLoader;Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->this$0:Lcom/pandora/ttlicense2/loader/LicenseLoader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->this$0:Lcom/pandora/ttlicense2/loader/LicenseLoader;

    invoke-static {p2}, Lcom/pandora/ttlicense2/loader/LicenseLoader;->access$100(Lcom/pandora/ttlicense2/loader/LicenseLoader;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->access$000(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    move-result-object v0

    iget-object v0, v0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->access$000(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;->onLoadCanceled(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;

    invoke-virtual {p0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->onLoadCanceled(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadComplete(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->this$0:Lcom/pandora/ttlicense2/loader/LicenseLoader;

    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/LicenseLoader;->access$100(Lcom/pandora/ttlicense2/loader/LicenseLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->access$000(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    move-result-object v1

    iget-object v1, v1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->access$000(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    move-result-object v1

    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->access$200(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;->onLoadComplete(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadComplete(Lcom/pandora/ttlicense2/loader/Loader$Loadable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;

    invoke-virtual {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->onLoadComplete(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)V

    return-void
.end method

.method public onLoadError(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;Ljava/io/IOException;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->this$0:Lcom/pandora/ttlicense2/loader/LicenseLoader;

    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/LicenseLoader;->access$100(Lcom/pandora/ttlicense2/loader/LicenseLoader;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->access$000(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    move-result-object v1

    iget-object v1, v1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->access$000(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;->onLoadError(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Ljava/io/IOException;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;

    invoke-virtual {p0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->onLoadError(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;Ljava/io/IOException;)V

    return-void
.end method

.method public onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->access$000(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;->onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/Loader$Loadable;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;

    invoke-virtual {p0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;F)V

    return-void
.end method

.method public onLoadStart(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->access$000(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;->onLoadStart(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadStart(Lcom/pandora/ttlicense2/loader/Loader$Loadable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;

    invoke-virtual {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseLoader$1;->onLoadStart(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;)V

    return-void
.end method
