.class public Lio/bidmachine/iab/vast/tags/VideoClicksTag;
.super Lio/bidmachine/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "VideoClicks"

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
    if-eq v3, v4, :cond_4

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
    const-string v4, "ClickThrough"

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
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {p0, v3}, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->o0(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v4, "ClickTracking"

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
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-direct {p0, v3}, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->k0(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const-string v4, "CustomClick"

    .line 62
    .line 63
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->H(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-direct {p0, v3}, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->l0(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->I(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private k0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->d:Ljava/util/List;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->d:Ljava/util/List;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->d:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private l0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->e:Ljava/util/List;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->e:Ljava/util/List;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->e:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private o0(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public Z()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public a0()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
