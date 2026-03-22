.class public interface abstract Lfu/d;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clone()Lfu/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfu/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract d(Lfu/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/f<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract execute()Lfu/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfu/c0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract request()Lokhttp3/Request;
.end method
