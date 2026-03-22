.class public Lnc/a;
.super Ljava/lang/Object;
.source "EngineParams.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "china"

    .line 2
    .line 3
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "vod-api-smart-strategy-lite.volcvod.com"

    .line 2
    .line 3
    .line 4
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string/jumbo v0, "vod.bytedanceapi.com"

    .line 2
    .line 3
    .line 4
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkc/a;->g()Llc/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    .line 8
    .line 9
    const-string v1, "TTSDK init config is null!"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "TTSDK"

    .line 15
    .line 16
    const-string v2, "Call Env.init first!"

    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_0
    invoke-virtual {v0}, Llc/a;->d()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "mya"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string/jumbo v0, "vod.ap-southeast-1.volcengineapi.com"

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    const-string/jumbo v0, "vod.volcengineapi.com"

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkc/a;->g()Llc/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    .line 8
    .line 9
    const-string v1, "TTSDK init config is null!"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "TTSDK"

    .line 15
    .line 16
    const-string v2, "Call Env.init first!"

    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_0
    invoke-virtual {v0}, Llc/a;->d()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "mya"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string/jumbo v0, "vod-settings.ap-southeast-1.volcvod.com"

    .line 36
    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    const-string/jumbo v0, "vod-settings.volcvod.com"

    .line 40
    .line 41
    .line 42
    return-object v0
.end method
