.class public Lio/bidmachine/iab/vast/tags/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStream;)Lio/bidmachine/iab/vast/tags/VastTag;
    .locals 4
    .param p0    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eq p0, v2, :cond_3

    .line 23
    .line 24
    :goto_0
    const/4 v3, 0x3

    .line 25
    if-eq p0, v3, :cond_2

    .line 26
    .line 27
    if-eq p0, v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const/4 v3, 0x2

    .line 34
    if-eq p0, v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v3, "VAST"

    .line 46
    .line 47
    invoke-static {p0, v3}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    new-instance p0, Lio/bidmachine/iab/vast/tags/VastTag;

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lio/bidmachine/iab/vast/tags/VastTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-object v1

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    .line 66
    .line 67
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    .line 72
    .line 73
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public static b(Ljava/lang/String;)Lio/bidmachine/iab/vast/tags/VastTag;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "VastXmlParser"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 11
    .line 12
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    .line 27
    :try_start_1
    invoke-static {v2}, Lio/bidmachine/iab/vast/tags/a;->a(Ljava/io/InputStream;)Lio/bidmachine/iab/vast/tags/VastTag;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    invoke-static {v0, v1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_3

    .line 42
    :catch_1
    move-exception p0

    .line 43
    move-object v1, v2

    .line 44
    goto :goto_1

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :catch_2
    move-exception p0

    .line 48
    :goto_1
    :try_start_3
    invoke-static {v0, p0}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Ljava/lang/Exception;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    :goto_2
    move-object v2, v1

    .line 58
    :goto_3
    if-eqz v2, :cond_0

    .line 59
    .line 60
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 61
    .line 62
    .line 63
    goto :goto_4

    .line 64
    :catch_3
    move-exception v1

    .line 65
    invoke-static {v0, v1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    :goto_4
    throw p0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    .line 70
    .line 71
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 72
    .line 73
    .line 74
    throw p0
.end method
