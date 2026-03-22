.class public Lio/bidmachine/iab/vast/tags/InLineAdTag;
.super Lio/bidmachine/iab/vast/tags/AdContentTag;
.source "SourceFile"


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "InLine"

    .line 7
    .line 8
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x3

    .line 16
    if-eq v3, v4, :cond_6

    .line 17
    .line 18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eq v3, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "Creatives"

    .line 30
    .line 31
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;->l0(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/AdContentTag;->a0(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v4, "Extensions"

    .line 46
    .line 47
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;->p0(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/AdContentTag;->k0(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string v4, "Impression"

    .line 62
    .line 63
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/AdContentTag;->x0(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const-string v4, "Error"

    .line 78
    .line 79
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/AdContentTag;->v0(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const-string v4, "AdSystem"

    .line 94
    .line 95
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    new-instance v3, Lio/bidmachine/iab/vast/tags/AdSystemTag;

    .line 102
    .line 103
    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/AdSystemTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/tags/AdContentTag;->Z(Lio/bidmachine/iab/vast/tags/AdSystemTag;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->I(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
