.class public interface abstract Lcom/amazonaws/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/io/InputStream;)V
.end method

.method public abstract c()Lcom/amazonaws/util/AWSRequestMetrics;
.end method

.method public abstract d(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract e()J
.end method

.method public abstract f(Lcom/amazonaws/util/AWSRequestMetrics;)V
.end method

.method public abstract g(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getContent()Ljava/io/InputStream;
.end method

.method public abstract getEndpoint()Ljava/net/URI;
.end method

.method public abstract getParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Z
.end method

.method public abstract j()Lcom/amazonaws/http/HttpMethodName;
.end method

.method public abstract k(Lcom/amazonaws/http/HttpMethodName;)V
.end method

.method public abstract l()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public abstract o(J)V
.end method

.method public abstract p(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract q(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract r()Lcom/amazonaws/AmazonWebServiceRequest;
.end method

.method public abstract s(Z)V
.end method

.method public abstract t(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract u(Ljava/net/URI;)V
.end method
