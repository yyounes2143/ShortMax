.class public abstract Lcom/inmobi/media/b7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Lcom/inmobi/media/a7;
    .locals 2

    .line 1
    const-string v0, "logLevel"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DEBUG"

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/inmobi/media/a7;->b:Lcom/inmobi/media/a7;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "ERROR"

    .line 19
    .line 20
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lcom/inmobi/media/a7;->c:Lcom/inmobi/media/a7;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v0, "INFO"

    .line 30
    .line 31
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    sget-object p0, Lcom/inmobi/media/a7;->a:Lcom/inmobi/media/a7;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "STATE"

    .line 41
    .line 42
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    sget-object p0, Lcom/inmobi/media/a7;->d:Lcom/inmobi/media/a7;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    sget-object p0, Lcom/inmobi/media/a7;->c:Lcom/inmobi/media/a7;

    .line 52
    .line 53
    :goto_0
    return-object p0
.end method
