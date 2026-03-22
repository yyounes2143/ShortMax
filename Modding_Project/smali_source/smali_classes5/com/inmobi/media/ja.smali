.class public abstract Lcom/inmobi/media/ja;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/inmobi/media/ec;ZLjava/lang/String;BLjava/lang/String;)Lcom/inmobi/media/ga;
    .locals 3

    .line 1
    const-string v0, "creativeType"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/inmobi/media/na;->a:Lcom/inmobi/media/oa;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v2, "webView"

    .line 15
    .line 16
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v1, Lcom/inmobi/media/oa;->b:Lcom/iab/omid/library/inmobi/adsession/Partner;

    .line 20
    .line 21
    invoke-static {v1, p1, p3, p5}, Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/inmobi/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string p3, "createHtmlAdSessionContext(...)"

    .line 26
    .line 27
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move-object p1, v0

    .line 32
    :goto_0
    const/4 p3, 0x1

    .line 33
    if-ne p4, p3, :cond_1

    .line 34
    .line 35
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 p3, 0x2

    .line 39
    if-ne p4, p3, :cond_2

    .line 40
    .line 41
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->UNSPECIFIED:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 p3, 0x3

    .line 45
    if-ne p4, p3, :cond_3

    .line 46
    .line 47
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->LOADED:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/4 p3, 0x4

    .line 51
    if-ne p4, p3, :cond_4

    .line 52
    .line 53
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    const/4 p3, 0x5

    .line 57
    if-ne p4, p3, :cond_5

    .line 58
    .line 59
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->ONE_PIXEL:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_5
    const/4 p3, 0x6

    .line 63
    if-ne p4, p3, :cond_6

    .line 64
    .line 65
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->VIEWABLE:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_6
    const/4 p3, 0x7

    .line 69
    if-ne p4, p3, :cond_7

    .line 70
    .line 71
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->AUDIBLE:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_7
    if-nez p4, :cond_8

    .line 75
    .line 76
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->OTHER:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_8
    sget-object p3, Lcom/iab/omid/library/inmobi/adsession/ImpressionType;->OTHER:Lcom/iab/omid/library/inmobi/adsession/ImpressionType;

    .line 80
    .line 81
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    const p5, -0x10fa53b6

    .line 86
    .line 87
    .line 88
    const-string v1, "access$getTAG$cp(...)"

    .line 89
    .line 90
    const-string v2, "ka"

    .line 91
    .line 92
    if-eq p4, p5, :cond_f

    .line 93
    .line 94
    const p5, 0x58d9bd6

    .line 95
    .line 96
    .line 97
    if-eq p4, p5, :cond_d

    .line 98
    .line 99
    const p5, 0x6b0147b

    .line 100
    .line 101
    .line 102
    if-eq p4, p5, :cond_b

    .line 103
    .line 104
    const p2, 0x54fa21ce

    .line 105
    .line 106
    .line 107
    if-eq p4, p2, :cond_9

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_9
    const-string p2, "nonvideo"

    .line 111
    .line 112
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-nez p0, :cond_a

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_a
    new-instance v0, Lcom/inmobi/media/ga;

    .line 120
    .line 121
    const-string p0, "html_display_ad"

    .line 122
    .line 123
    const/4 p2, 0x0

    .line 124
    invoke-direct {v0, p0, p3, p1, p2}, Lcom/inmobi/media/ga;-><init>(Ljava/lang/String;Lcom/iab/omid/library/inmobi/adsession/ImpressionType;Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;Z)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_b
    const-string p4, "video"

    .line 129
    .line 130
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-nez p0, :cond_c

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_c
    new-instance v0, Lcom/inmobi/media/ga;

    .line 138
    .line 139
    const-string p0, "html_video_ad"

    .line 140
    .line 141
    invoke-direct {v0, p0, p3, p1, p2}, Lcom/inmobi/media/ga;-><init>(Ljava/lang/String;Lcom/iab/omid/library/inmobi/adsession/ImpressionType;Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;Z)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_d
    const-string p4, "audio"

    .line 146
    .line 147
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-nez p0, :cond_e

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_e
    new-instance v0, Lcom/inmobi/media/ga;

    .line 155
    .line 156
    const-string p0, "html_audio_ad"

    .line 157
    .line 158
    invoke-direct {v0, p0, p3, p1, p2}, Lcom/inmobi/media/ga;-><init>(Ljava/lang/String;Lcom/iab/omid/library/inmobi/adsession/ImpressionType;Lcom/iab/omid/library/inmobi/adsession/AdSessionContext;Z)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_f
    const-string p1, "unknown"

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-nez p0, :cond_10

    .line 169
    .line 170
    :goto_2
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_10
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :goto_3
    return-object v0
.end method
