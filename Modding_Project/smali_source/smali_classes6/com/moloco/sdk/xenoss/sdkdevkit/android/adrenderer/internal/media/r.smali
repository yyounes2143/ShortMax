.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Exception;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;
    .locals 1
    .param p0    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Ljava/net/UnknownHostException;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$q;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$q;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    instance-of v0, p0, Ljava/net/SocketException;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$i;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$i;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$j;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$j;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    instance-of v0, p0, Ljava/io/IOException;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$f;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$f;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    instance-of v0, p0, Ljava/lang/SecurityException;

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$g;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$g;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_4
    instance-of v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/p;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$m;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$m;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_5
    instance-of p0, p0, Ljava/lang/NumberFormatException;

    .line 49
    .line 50
    if-eqz p0, :cond_6

    .line 51
    .line 52
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$l;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$l;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_6
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$r;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a$r;

    .line 56
    .line 57
    :goto_0
    return-object p0
.end method
