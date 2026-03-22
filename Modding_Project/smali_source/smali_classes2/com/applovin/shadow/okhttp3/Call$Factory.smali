.class public interface abstract Lcom/applovin/shadow/okhttp3/Call$Factory;
.super Ljava/lang/Object;
.source "Call.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/shadow/okhttp3/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract newCall(Lcom/applovin/shadow/okhttp3/Request;)Lcom/applovin/shadow/okhttp3/Call;
    .param p1    # Lcom/applovin/shadow/okhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
