.class public abstract Lpb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const-string p0, "IOUtil"

    .line 8
    .line 9
    const-string v0, "closeSecure IOException"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lpb/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lpb/e;->a(Ljava/io/Closeable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lpb/e;->a(Ljava/io/Closeable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
