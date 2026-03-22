.class public final Lio/ktor/client/call/ReceivePipelineException;
.super Ljava/lang/IllegalStateException;
.source "HttpClientCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/call/ReceivePipelineException;->a:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method
