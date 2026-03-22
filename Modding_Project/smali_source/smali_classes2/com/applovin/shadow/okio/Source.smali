.class public interface abstract Lcom/applovin/shadow/okio/Source;
.super Ljava/lang/Object;
.source "Source.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read(Lcom/applovin/shadow/okio/Buffer;J)J
    .param p1    # Lcom/applovin/shadow/okio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract timeout()Lcom/applovin/shadow/okio/Timeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
