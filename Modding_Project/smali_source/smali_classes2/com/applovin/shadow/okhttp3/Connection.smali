.class public interface abstract Lcom/applovin/shadow/okhttp3/Connection;
.super Ljava/lang/Object;
.source "Connection.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract handshake()Lcom/applovin/shadow/okhttp3/Handshake;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract protocol()Lcom/applovin/shadow/okhttp3/Protocol;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract route()Lcom/applovin/shadow/okhttp3/Route;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract socket()Ljava/net/Socket;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
