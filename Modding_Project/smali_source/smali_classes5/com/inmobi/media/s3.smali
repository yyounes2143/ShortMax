.class public abstract Lcom/inmobi/media/s3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroidx/browser/customtabs/CustomTabsIntent;Landroid/net/Uri;Lcom/inmobi/media/e2;Lcom/inmobi/media/R6;Lcom/inmobi/media/yb;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "customTabsIntent"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "uri"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "api"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    const-string v2, "toString(...)"

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    :try_start_0
    const-string p1, "v3"

    .line 31
    .line 32
    const-string v0, "access$getLOG_TAG$cp(...)"

    .line 33
    .line 34
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eqz p3, :cond_5

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p3, p1, p6, p4}, Lcom/inmobi/media/e2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)V

    .line 47
    .line 48
    .line 49
    goto :goto_4

    .line 50
    :cond_0
    iget-object v3, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 51
    .line 52
    const/high16 v4, 0x10000000

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    iget-object v3, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 63
    .line 64
    .line 65
    if-nez p4, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-string p1, "IN_NATIVE"

    .line 69
    .line 70
    iput-object p1, p4, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 71
    .line 72
    :goto_0
    if-eqz p3, :cond_5

    .line 73
    .line 74
    sget-object p1, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 75
    .line 76
    invoke-interface {p3, p1, p4, v1}, Lcom/inmobi/media/e2;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_4

    .line 80
    :catch_0
    :try_start_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1, p5, p6}, Lcom/inmobi/media/z2;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    goto :goto_1

    .line 95
    :catch_1
    const/16 p0, 0x9

    .line 96
    .line 97
    :goto_1
    if-nez p4, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const-string p1, "EX_NATIVE"

    .line 101
    .line 102
    iput-object p1, p4, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 103
    .line 104
    :goto_2
    if-eqz p0, :cond_4

    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    if-ne p0, p1, :cond_3

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    if-eqz p3, :cond_5

    .line 111
    .line 112
    sget-object p1, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    .line 113
    .line 114
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-interface {p3, p1, p4, p0}, Lcom/inmobi/media/e2;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V

    .line 119
    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_4
    :goto_3
    if-eqz p3, :cond_5

    .line 123
    .line 124
    sget-object p0, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 125
    .line 126
    invoke-interface {p3, p0, p4, v1}, Lcom/inmobi/media/e2;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    :goto_4
    return-void
.end method
