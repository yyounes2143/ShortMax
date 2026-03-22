.class public abstract Lcom/inmobi/media/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;Lcom/inmobi/media/z5;)Z
    .locals 7

    .line 1
    const-string v0, "com.android.vending"

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "url"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "redirectionValidator"

    .line 14
    .line 15
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "api"

    .line 19
    .line 20
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "AppstoreLinkHandler"

    .line 24
    .line 25
    if-eqz p4, :cond_0

    .line 26
    .line 27
    move-object v3, p4

    .line 28
    check-cast v3, Lcom/inmobi/media/A5;

    .line 29
    .line 30
    const-string v4, "In appStoreLinkHandled"

    .line 31
    .line 32
    invoke-virtual {v3, v2, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v3, 0x0

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const-string v5, "market"

    .line 55
    .line 56
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const-string v5, "play.google.com"

    .line 67
    .line 68
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v4, "market.android.com"

    .line 79
    .line 80
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    :goto_0
    return v3

    .line 88
    :cond_3
    :goto_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v4, "Playstore link handled successfully"

    .line 93
    .line 94
    const/4 v5, 0x1

    .line 95
    if-nez p0, :cond_4

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .line 104
    .line 105
    invoke-interface {p2}, Lcom/inmobi/media/yb;->d()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_5

    .line 110
    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string p1, "EX_"

    .line 114
    .line 115
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-interface {p2, p0}, Lcom/inmobi/media/yb;->a(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return v3

    .line 129
    :cond_5
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    .line 130
    .line 131
    const-string p2, "android.intent.action.VIEW"

    .line 132
    .line 133
    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    const/high16 p2, 0x10000000

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    .line 146
    .line 147
    if-eqz p4, :cond_6

    .line 148
    .line 149
    move-object p0, p4

    .line 150
    check-cast p0, Lcom/inmobi/media/A5;

    .line 151
    .line 152
    invoke-virtual {p0, v2, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :catch_0
    move-exception p0

    .line 157
    goto :goto_3

    .line 158
    :cond_6
    :goto_2
    move v3, v5

    .line 159
    goto :goto_4

    .line 160
    :goto_3
    if-eqz p4, :cond_7

    .line 161
    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string p2, "Error message in processing appStoreLinkHandling: "

    .line 165
    .line 166
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {p0, p1}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    check-cast p4, Lcom/inmobi/media/A5;

    .line 174
    .line 175
    invoke-virtual {p4, v2, p0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_7
    :goto_4
    return v3

    .line 179
    :catch_1
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    :goto_5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/inmobi/media/C3;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;Lcom/inmobi/media/z5;)I

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-eqz p0, :cond_9

    .line 188
    .line 189
    if-ne p0, v5, :cond_8

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_8
    return v3

    .line 193
    :cond_9
    :goto_6
    if-eqz p4, :cond_a

    .line 194
    .line 195
    check-cast p4, Lcom/inmobi/media/A5;

    .line 196
    .line 197
    invoke-virtual {p4, v2, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_a
    return v5
.end method
