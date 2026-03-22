.class public final Ljk/z;
.super Ljava/lang/Object;
.source "ThrowableExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;
    .locals 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const v0, 0x15f90

    .line 2
    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    new-instance p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v1, p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast p0, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-direct {v1, v0, p0}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    move-object p0, v1

    .line 31
    :goto_0
    return-object p0
.end method
