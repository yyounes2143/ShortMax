.class public abstract Lcom/inmobi/media/qf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/inmobi/media/z5;)Landroid/webkit/WebResourceResponse;
    .locals 5

    .line 1
    const-string v0, "urlRaw"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "IMResourceCacheManager"

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v1, "shouldInterceptRequest "

    .line 11
    .line 12
    invoke-static {v1, p0}, Lcom/inmobi/media/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    move-object v2, p1

    .line 17
    check-cast v2, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    invoke-virtual {v2, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :try_start_0
    invoke-static {p0}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v2, "UTF-8"

    .line 32
    .line 33
    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-object p0, v1

    .line 39
    :goto_0
    if-nez p0, :cond_1

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    const-string v2, "url"

    .line 43
    .line 44
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x2

    .line 49
    const-string v4, "inmobicache=true"

    .line 50
    .line 51
    invoke-static {p0, v4, v2, v3, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    const-string v2, "Cache is not enabled for URL: "

    .line 60
    .line 61
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p1, Lcom/inmobi/media/A5;

    .line 66
    .line 67
    invoke-virtual {p1, v0, p0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-object v1

    .line 71
    :cond_3
    sget-object v0, Lcom/inmobi/media/sf;->a:Lcom/inmobi/media/sf;

    .line 72
    .line 73
    invoke-virtual {v0, p0, p1}, Lcom/inmobi/media/sf;->a(Ljava/lang/String;Lcom/inmobi/media/z5;)Landroid/webkit/WebResourceResponse;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method
