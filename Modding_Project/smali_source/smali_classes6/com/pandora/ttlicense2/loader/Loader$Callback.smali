.class public interface abstract Lcom/pandora/ttlicense2/loader/Loader$Callback;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/pandora/ttlicense2/loader/Loader$Loadable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoadCanceled(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLoadComplete(Lcom/pandora/ttlicense2/loader/Loader$Loadable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onLoadError(Lcom/pandora/ttlicense2/loader/Loader$Loadable;Ljava/io/IOException;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/IOException;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/Loader$Loadable;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method public abstract onLoadStart(Lcom/pandora/ttlicense2/loader/Loader$Loadable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
