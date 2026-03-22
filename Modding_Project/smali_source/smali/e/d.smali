.class public abstract Le/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/ads/ResponseInfo;)Ljava/lang/String;
    .locals 9

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :try_start_0
    const-string v0, "moloco"

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string p0, "Moloco"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v0, "maticoo"

    .line 23
    .line 24
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const-string p0, "Maticoo"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string v0, "bluex"

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    const-string p0, "BlueX"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const-string v0, "."

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-static {p0, v0, v2, v1, v2}, Lkotlin/text/StringsKt;->l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "Adapter"

    .line 53
    .line 54
    const-string v5, ""

    .line 55
    .line 56
    const/4 v7, 0x4

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v6, 0x0

    .line 59
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    const-string p0, "Unknown"

    .line 65
    .line 66
    :goto_0
    return-object p0

    .line 67
    :cond_4
    :goto_1
    const-string p0, ""

    .line 68
    .line 69
    return-object p0
.end method
