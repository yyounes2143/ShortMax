.class Lcom/pandora/ttlicense2/loader/LicenseReader$1;
.super Ljava/lang/Object;
.source "LicenseReader.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/loader/LicenseReader;->startReadAsync(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pandora/ttlicense2/loader/Loader$Callback<",
        "Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandora/ttlicense2/loader/LicenseReader;

.field final synthetic val$callback:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/loader/LicenseReader;Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->this$0:Lcom/pandora/ttlicense2/loader/LicenseReader;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->this$0:Lcom/pandora/ttlicense2/loader/LicenseReader;

    invoke-static {p2}, Lcom/pandora/ttlicense2/loader/LicenseReader;->access$200(Lcom/pandora/ttlicense2/loader/LicenseReader;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->access$100(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    move-result-object v0

    iget-object v0, v0, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->access$100(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;->onReadCanceled(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;

    invoke-virtual {p0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->onLoadCanceled(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadComplete(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->this$0:Lcom/pandora/ttlicense2/loader/LicenseReader;

    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/LicenseReader;->access$200(Lcom/pandora/ttlicense2/loader/LicenseReader;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->access$100(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    move-result-object v1

    iget-object v1, v1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->access$100(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    move-result-object v1

    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->access$000(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;->onReadComplete(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Result;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadComplete(Lcom/pandora/ttlicense2/loader/Loader$Loadable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;

    invoke-virtual {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->onLoadComplete(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)V

    return-void
.end method

.method public onLoadError(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;Ljava/io/IOException;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->this$0:Lcom/pandora/ttlicense2/loader/LicenseReader;

    invoke-static {v0}, Lcom/pandora/ttlicense2/loader/LicenseReader;->access$200(Lcom/pandora/ttlicense2/loader/LicenseReader;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->access$100(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    move-result-object v1

    iget-object v1, v1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->access$100(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;->onReadError(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Ljava/io/IOException;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;

    invoke-virtual {p0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->onLoadError(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;Ljava/io/IOException;)V

    return-void
.end method

.method public onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->access$100(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;->onReadProgressChanged(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;F)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/Loader$Loadable;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;

    invoke-virtual {p0, p1, p2}, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;F)V

    return-void
.end method

.method public onLoadStart(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->val$callback:Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;->access$100(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;->onReadStart(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadStart(Lcom/pandora/ttlicense2/loader/Loader$Loadable;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;

    invoke-virtual {p0, p1}, Lcom/pandora/ttlicense2/loader/LicenseReader$1;->onLoadStart(Lcom/pandora/ttlicense2/loader/LicenseReader$FileReadTask;)V

    return-void
.end method
