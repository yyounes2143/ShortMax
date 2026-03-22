.class public interface abstract Lcom/pandora/ttlicense2/loader/Loader$Loadable;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/Cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Loadable"
.end annotation


# virtual methods
.method public abstract load(Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
