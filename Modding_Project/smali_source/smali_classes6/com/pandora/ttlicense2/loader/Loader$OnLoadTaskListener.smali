.class interface abstract Lcom/pandora/ttlicense2/loader/Loader$OnLoadTaskListener;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OnLoadTaskListener"
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
.method public abstract onTaskFinish(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandora/ttlicense2/loader/Loader$LoadTask<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onTaskStart(Lcom/pandora/ttlicense2/loader/Loader$LoadTask;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pandora/ttlicense2/loader/Loader$LoadTask<",
            "TT;>;)V"
        }
    .end annotation
.end method
