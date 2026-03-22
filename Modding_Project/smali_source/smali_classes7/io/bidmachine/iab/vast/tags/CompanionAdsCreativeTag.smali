.class public Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;
.super Lio/bidmachine/iab/vast/tags/CreativeContentTag;
.source "SourceFile"


# instance fields
.field private final c:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/CompanionTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/tags/CreativeContentTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;->c:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x0

    .line 13
    const-string v2, "CompanionAds"

    .line 14
    .line 15
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x3

    .line 23
    if-eq v3, v4, :cond_3

    .line 24
    .line 25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eq v3, v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "Companion"

    .line 37
    .line 38
    invoke-static {v3, v4}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->D(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    new-instance v3, Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 45
    .line 46
    invoke-direct {v3, p1}, Lio/bidmachine/iab/vast/tags/CompanionTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/tags/CompanionTag;->u0()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    iget-object v4, p0, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;->c:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v3, 0x0

    .line 62
    new-array v3, v3, [Ljava/lang/Object;

    .line 63
    .line 64
    const-string v4, "VastXmlTag"

    .line 65
    .line 66
    const-string v5, "Creative Companion: is not valid. Skipping it."

    .line 67
    .line 68
    invoke-static {v4, v5, v3}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/VastXmlTag;->I(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public Z()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/iab/vast/tags/CompanionTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
