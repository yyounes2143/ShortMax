.class public final Lcom/inmobi/media/Pe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/HashMap;


# instance fields
.field public final a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

.field public final b:Lcom/inmobi/media/z5;

.field public final c:Lcom/inmobi/media/Ue;

.field public d:Z

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-string v0, "Error"

    .line 2
    .line 3
    const-string v1, "error"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "Impression"

    .line 10
    .line 11
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v0, "ClickTracking"

    .line 16
    .line 17
    const-string v1, "click"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v0, "creativeView"

    .line 24
    .line 25
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v0, "start"

    .line 30
    .line 31
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v0, "firstQuartile"

    .line 36
    .line 37
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v0, "midpoint"

    .line 42
    .line 43
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-string v0, "thirdQuartile"

    .line 48
    .line 49
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-string v0, "complete"

    .line 54
    .line 55
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const-string v0, "mute"

    .line 60
    .line 61
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-string v0, "unmute"

    .line 66
    .line 67
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    const-string v0, "pause"

    .line 72
    .line 73
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    const-string v0, "resume"

    .line 78
    .line 79
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    const-string v0, "fullscreen"

    .line 84
    .line 85
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    const-string v0, "exitFullscreen"

    .line 90
    .line 91
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 92
    .line 93
    .line 94
    move-result-object v16

    .line 95
    const-string v0, "closeEndCard"

    .line 96
    .line 97
    invoke-static {v0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 98
    .line 99
    .line 100
    move-result-object v17

    .line 101
    filled-new-array/range {v2 .. v17}, [Lkotlin/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lcom/inmobi/media/Pe;->f:Ljava/util/HashMap;

    .line 110
    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "mVastVideoConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/Pe;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    new-instance p2, Lcom/inmobi/media/Ue;

    .line 14
    .line 15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p2, v0, p1}, Lcom/inmobi/media/Ue;-><init>(Ljava/util/List;Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    .line 23
    .line 24
    return-void
.end method

.method public static b(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/inmobi/media/Ue;
    .locals 10

    .line 1
    const-string v0, "event"

    const-string v1, "Ad"

    const-string v2, "VAST"

    const-string v3, "InLine"

    const-string v4, "Wrapper"

    iget-object v5, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    const-string v6, "TAG"

    const-string v7, "Pe"

    if-eqz v5, :cond_0

    .line 2
    const-string v8, "vastXML = "

    invoke-static {v7, v6, v8, p1}, Lcom/inmobi/media/I6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3
    check-cast v5, Lcom/inmobi/media/A5;

    invoke-virtual {v5, v7, v8}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v8, 0x12f

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {p0, v8}, Lcom/inmobi/media/Pe;->c(I)V

    .line 6
    iget-object p1, p0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    goto/16 :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 9
    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 10
    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v2}, Lcom/inmobi/media/Pe;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 12
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v9, 0x65

    if-eqz v2, :cond_7

    .line 13
    invoke-virtual {p0, v5, v1}, Lcom/inmobi/media/Pe;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 14
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {p0, v5, p1}, Lcom/inmobi/media/Pe;->a(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)V

    .line 16
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p0, v5}, Lcom/inmobi/media/Pe;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 18
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p0, v5}, Lcom/inmobi/media/Pe;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_4

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "VAST Schema validation error: InLine node or Wrapper node at appropriate hierarchy not found"

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v7, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_4
    invoke-virtual {p0, v9}, Lcom/inmobi/media/Pe;->c(I)V

    goto :goto_2

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_6

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "VAST Schema validation error: Ad node at appropriate hierarchy not found"

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v7, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_6
    invoke-virtual {p0, v8}, Lcom/inmobi/media/Pe;->c(I)V

    goto :goto_2

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_8

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "VAST Schema validation error: VAST node at appropriate hierarchy not found"

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v7, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_8
    invoke-virtual {p0, v9}, Lcom/inmobi/media/Pe;->c(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    const/16 v1, 0x384

    .line 26
    invoke-virtual {p0, v1}, Lcom/inmobi/media/Pe;->c(I)V

    .line 27
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 28
    invoke-static {p1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 29
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    goto :goto_2

    :goto_1
    const/16 v1, 0x64

    .line 30
    invoke-virtual {p0, v1}, Lcom/inmobi/media/Pe;->c(I)V

    .line 31
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v1, Lcom/inmobi/media/f2;

    invoke-direct {v1, p1}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 32
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, v1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 34
    :goto_2
    iget-object p1, p0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    return-object p1
.end method

.method public final a(I)V
    .locals 10

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[ERRORCODE]"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p1, p0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    .line 107
    iget-object p1, p1, Lcom/inmobi/media/Ue;->h:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/U8;

    .line 109
    iget-object v2, v1, Lcom/inmobi/media/U8;->b:Ljava/lang/String;

    .line 110
    const-string v3, "error"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, v1, Lcom/inmobi/media/U8;->d:Ljava/lang/String;

    .line 112
    invoke-static {v2, v0}, Lcom/inmobi/media/T9;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    .line 113
    sget-object v3, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    .line 114
    iget-object v5, v1, Lcom/inmobi/media/U8;->c:Ljava/util/Map;

    .line 115
    sget-object v8, Lcom/inmobi/media/Ta;->c:Lcom/inmobi/media/Ta;

    iget-object v9, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/inmobi/media/x2;->a(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/Z1;Lcom/inmobi/media/Ta;Lcom/inmobi/media/z5;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 116
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object p2, v1

    goto :goto_4

    .line 117
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move v4, v2

    move v5, v4

    :goto_0
    if-gt v4, v0, :cond_6

    if-nez v5, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v0

    .line 118
    :goto_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 119
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    if-nez v5, :cond_4

    if-nez v6, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 120
    :cond_6
    :goto_3
    invoke-static {v0, v3, p2, v4}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 121
    :goto_4
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 122
    iget-object v0, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_7

    const-string v1, "TAG"

    const-string v2, "Pe"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Malformed URL "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Discarding this tracker"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_7
    const-string p2, "Impression"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    .line 124
    :cond_8
    new-instance v0, Lcom/inmobi/media/U8;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p2, v2, p1, v1}, Lcom/inmobi/media/U8;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 125
    iget-object p1, p0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    const-string p2, "tracker"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object p1, p1, Lcom/inmobi/media/Ue;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12

    .line 70
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 71
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdVerifications"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 72
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 73
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "Verification"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 75
    const-string v2, "vendor"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 76
    const-string v4, "vastParser"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    move-object v4, v0

    move-object v5, v4

    .line 78
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    .line 79
    :cond_2
    invoke-static {v4}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 80
    new-instance v1, Lcom/inmobi/media/ha;

    .line 81
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 82
    invoke-direct {v1, v3, v5, v4, v0}, Lcom/inmobi/media/ha;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 83
    iget-object v0, p0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    const-string v2, "tracker"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, v0, Lcom/inmobi/media/Ue;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_11

    const-string v1, "TAG"

    const-string v2, "Pe"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Omid JavaScript URL found inside VAST : "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 87
    :cond_3
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-static {v2}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 88
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v6, "JavaScriptResource"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_c

    .line 90
    const-string v2, "apiFramework"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 91
    const-string v6, "omid"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v2, v6, v9, v8, v0}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 92
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    if-ne v2, v7, :cond_10

    .line 93
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_8

    .line 95
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    move v7, v9

    move v8, v7

    :goto_4
    if-gt v7, v4, :cond_a

    if-nez v8, :cond_5

    move v10, v7

    goto :goto_5

    :cond_5
    move v10, v4

    .line 96
    :goto_5
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    .line 97
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v10

    if-gtz v10, :cond_6

    move v10, v6

    goto :goto_6

    :cond_6
    move v10, v9

    :goto_6
    if-nez v8, :cond_8

    if-nez v10, :cond_7

    move v8, v6

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    if-nez v10, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 98
    :cond_a
    :goto_7
    invoke-static {v4, v6, v2, v7}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_b
    :goto_8
    move-object v4, v0

    goto :goto_a

    .line 99
    :cond_c
    const-string v6, "VerificationParameters"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 100
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    if-eq v2, v7, :cond_d

    const/4 v6, 0x5

    if-eq v2, v6, :cond_d

    goto :goto_a

    .line 101
    :cond_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_e

    goto :goto_9

    :cond_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getText(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_f
    :goto_9
    move-object v5, v0

    .line 102
    :cond_10
    :goto_a
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    goto/16 :goto_2

    .line 103
    :cond_11
    :goto_b
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 6

    .line 35
    iget-object v0, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    const-string v2, "Pe"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "name="

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 36
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 37
    iget-object v4, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v4, :cond_2

    .line 38
    const-string v5, "VAST Schema validation error: VAST node at appropriate hierarchy not found. "

    invoke-static {v2, v1, v5}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 39
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Lcom/inmobi/media/A5;

    invoke-virtual {v4, v2, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 41
    iget-object v4, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v4, :cond_2

    .line 42
    const-string v5, "Parsing failed. "

    invoke-static {v2, v1, v5}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 43
    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Lcom/inmobi/media/A5;

    invoke-virtual {v4, v2, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 44
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return-void
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 8

    .line 51
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 52
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoClicks"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 54
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "ClickThrough"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_b

    if-nez p2, :cond_2

    :cond_1
    return-void

    .line 56
    :cond_2
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 57
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_5

    .line 59
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-gt v4, v1, :cond_9

    if-nez v5, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v1

    .line 61
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 62
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_5

    move v6, v2

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    if-nez v5, :cond_7

    if-nez v6, :cond_6

    move v5, v2

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 63
    :cond_9
    :goto_4
    invoke-static {v1, v2, v0, v4}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v0, 0x0

    .line 64
    :goto_6
    iget-object v1, p0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    .line 65
    iput-object v0, v1, Lcom/inmobi/media/Ue;->k:Ljava/lang/String;

    goto :goto_7

    .line 66
    :cond_b
    const-string v1, "ClickTracking"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 67
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 68
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getText(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "click"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/Pe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_c
    :goto_7
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)V
    .locals 10

    const-string v0, "TAG"

    const-string v1, "Pe"

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 45
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    iget-object v5, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v6, "VAST Schema validation error: VAST node at appropriate hierarchy not found."

    invoke-virtual {v5, v1, v6}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :catch_1
    iget-object v5, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v6, "Parsing failed."

    invoke-virtual {v5, v1, v6}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    goto :goto_3

    .line 48
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 49
    array-length v6, p2

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, p2, v7

    .line 50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v4, :cond_0

    :goto_3
    return-void
.end method

.method public final b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Extensions"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 4
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v1, "CompanionAdTracking"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    .line 8
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 9
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TrackingEvents"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 12
    :cond_3
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    goto :goto_2

    .line 13
    :cond_4
    const-string v1, "Extension"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 14
    const-string v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    const-string v1, "AdVerifications"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 17
    :cond_5
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public final c(I)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    .line 194
    iput p1, v0, Lcom/inmobi/media/Ue;->l:I

    .line 195
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->a(I)V

    return-void
.end method

.method public final c(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "getAttributeValue(...)"

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x65

    const-string v9, "TAG"

    const-string v10, "Pe"

    if-eqz v7, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "InLine"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v3}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    if-nez v6, :cond_3

    .line 3
    :cond_1
    iget-object v1, v0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_2

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "VAST Schema validation error: Creatives at appropriate hierarchy  not found"

    invoke-virtual {v1, v10, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_2
    invoke-virtual {v0, v8}, Lcom/inmobi/media/Pe;->c(I)V

    :cond_3
    return-void

    .line 5
    :cond_4
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {v3}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v11, "getText(...)"

    const/4 v12, 0x4

    sparse-switch v7, :sswitch_data_0

    :cond_5
    :goto_2
    move-object v12, v1

    move-object/from16 v21, v2

    move/from16 v24, v6

    goto/16 :goto_5f

    :sswitch_0
    const-string v7, "Impression"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    .line 7
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    if-ne v3, v12, :cond_7

    .line 8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v3}, Lcom/inmobi/media/Pe;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v1

    move-object/from16 v21, v2

    const/4 v6, 0x1

    goto/16 :goto_60

    .line 9
    :cond_7
    iget-object v7, v0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v7, :cond_5

    .line 10
    const-string v8, "VAST Schema Error: VastAdTagUri at appropriate hierarchy not found or invalid - "

    invoke-static {v10, v9, v8, v3}, Lcom/inmobi/media/X8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 11
    check-cast v7, Lcom/inmobi/media/A5;

    invoke-virtual {v7, v10, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :sswitch_1
    const-string v7, "Extensions"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    .line 13
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 14
    :sswitch_2
    const-string v7, "Error"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    .line 15
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 16
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "error"

    invoke-virtual {v0, v7, v3}, Lcom/inmobi/media/Pe;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :sswitch_3
    const-string v7, "Creatives"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_2

    .line 18
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 19
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_11

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v3}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    if-nez v5, :cond_d

    .line 20
    iget-object v3, v0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_c

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    const-string v4, "VAST Schema validation error: Creative at appropriate hierarchy not found"

    invoke-virtual {v3, v10, v4}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_c
    invoke-virtual {v0, v8}, Lcom/inmobi/media/Pe;->c(I)V

    :cond_d
    if-nez v14, :cond_f

    .line 22
    iget-object v3, v0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_e

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    const-string v4, "VAST Schema validation error: Linear Node at appropriate hierarchy not found"

    invoke-virtual {v3, v10, v4}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const/16 v3, 0xc9

    .line 23
    invoke-virtual {v0, v3}, Lcom/inmobi/media/Pe;->c(I)V

    :cond_f
    if-eqz v5, :cond_10

    if-eqz v14, :cond_10

    if-eqz v15, :cond_10

    move-object v12, v1

    move-object/from16 v21, v2

    const/4 v5, 0x1

    goto/16 :goto_60

    :cond_10
    return-void

    .line 24
    :cond_11
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_95

    invoke-static {v3}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v3

    if-nez v3, :cond_95

    .line 25
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_95

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v8, -0x785484bb

    const-string v13, "TrackingEvents"

    if-eq v4, v8, :cond_5d

    const v8, 0x44990624

    if-eq v4, v8, :cond_15

    const v8, 0x705bd3cf

    if-eq v4, v8, :cond_13

    :cond_12
    :goto_5
    move-object v12, v1

    move-object/from16 v21, v2

    move/from16 v20, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v27, v14

    move/from16 v28, v15

    :goto_6
    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v6, 0x4

    goto/16 :goto_5d

    :cond_13
    const-string v4, "Creative"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_5

    :cond_14
    move-object v12, v1

    move-object/from16 v21, v2

    move/from16 v24, v6

    move-object/from16 v25, v7

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x4

    goto/16 :goto_5e

    :cond_15
    const-string v4, "CompanionAds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_5

    .line 26
    :cond_16
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v8, 0x0

    .line 27
    :goto_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_19

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-static {v3}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v12

    if-nez v12, :cond_17

    goto :goto_8

    .line 28
    :cond_17
    iget-object v3, v0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    .line 29
    iget-object v3, v3, Lcom/inmobi/media/Ue;->i:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_18

    .line 31
    iget-boolean v4, v0, Lcom/inmobi/media/Pe;->d:Z

    if-eqz v4, :cond_18

    const/16 v3, 0x25c

    .line 32
    invoke-virtual {v0, v3}, Lcom/inmobi/media/Pe;->a(I)V

    goto :goto_5

    :cond_18
    if-lez v8, :cond_12

    if-nez v3, :cond_12

    const/16 v3, 0x258

    .line 33
    invoke-virtual {v0, v3}, Lcom/inmobi/media/Pe;->a(I)V

    goto :goto_5

    .line 34
    :cond_19
    :goto_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v4

    const-string v4, "Companion"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5b

    invoke-static {v3}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v12

    if-nez v12, :cond_5b

    add-int/lit8 v8, v8, 0x1

    .line 35
    :try_start_0
    const-string v12, "width"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v19, v3

    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v20, v5

    .line 36
    :try_start_2
    const-string v5, "height"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_0
    :goto_9
    move/from16 v20, v5

    goto :goto_a

    :catch_1
    move/from16 v19, v3

    goto :goto_9

    :goto_a
    const/4 v12, 0x0

    .line 37
    :catch_2
    iget-object v3, v0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_1a

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    const-string v5, "Invalid width or height encountered for a companion and ignoring that."

    invoke-virtual {v3, v10, v5}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const/4 v3, 0x0

    :goto_b
    if-lez v12, :cond_1b

    if-gtz v3, :cond_1c

    :cond_1b
    move-object/from16 v21, v2

    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v14

    move/from16 v28, v15

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_3a

    .line 38
    :cond_1c
    const-string v5, "ID"

    move-object/from16 v21, v2

    const/4 v2, 0x0

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    new-instance v2, Lcom/inmobi/media/Le;

    invoke-direct {v2, v12, v3, v5}, Lcom/inmobi/media/Le;-><init>(IILjava/lang/String;)V

    .line 40
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v5, 0x0

    .line 41
    :goto_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1e

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-static {v3}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v12

    if-nez v12, :cond_1d

    goto :goto_d

    :cond_1d
    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v26, v8

    move/from16 v27, v14

    goto/16 :goto_19

    .line 42
    :cond_1e
    :goto_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_59

    invoke-static {v3}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v3

    if-nez v3, :cond_59

    .line 43
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    move-object/from16 v22, v4

    const-string v4, "tracker"

    move-object/from16 v23, v5

    const-string v5, "; Discarding this tracker"

    move/from16 v24, v6

    const-string v6, "Malformed URL: "

    move-object/from16 v25, v7

    const-string v7, "resource"

    sparse-switch v12, :sswitch_data_1

    :cond_1f
    :goto_e
    move/from16 v26, v8

    move/from16 v27, v14

    :cond_20
    :goto_f
    move/from16 v28, v15

    const/4 v12, 0x0

    :goto_10
    const/4 v14, 0x0

    goto/16 :goto_38

    :sswitch_4
    const-string v4, "HTMLResource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_e

    .line 44
    :cond_21
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1f

    .line 45
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 47
    new-instance v4, Lcom/inmobi/media/Ke;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v3}, Lcom/inmobi/media/Ke;-><init>(BLjava/lang/String;)V

    .line 48
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v3, v2, Lcom/inmobi/media/Le;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 50
    :sswitch_5
    const-string v7, "CompanionClickTracking"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_e

    .line 51
    :cond_22
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    const/4 v7, 0x4

    if-ne v3, v7, :cond_1f

    .line 52
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_24

    :cond_23
    move/from16 v26, v8

    move/from16 v27, v14

    goto :goto_17

    .line 54
    :cond_24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    const/4 v12, 0x0

    const/16 v23, 0x0

    :goto_11
    move/from16 v26, v8

    if-gt v12, v7, :cond_2a

    if-nez v23, :cond_25

    move v8, v12

    goto :goto_12

    :cond_25
    move v8, v7

    .line 55
    :goto_12
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v27, v14

    const/16 v14, 0x20

    .line 56
    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v8

    if-gtz v8, :cond_26

    const/4 v8, 0x1

    goto :goto_13

    :cond_26
    const/4 v8, 0x0

    :goto_13
    if-nez v23, :cond_28

    if-nez v8, :cond_27

    move/from16 v8, v26

    move/from16 v14, v27

    const/16 v23, 0x1

    goto :goto_11

    :cond_27
    add-int/lit8 v12, v12, 0x1

    :goto_14
    move/from16 v8, v26

    move/from16 v14, v27

    goto :goto_11

    :cond_28
    if-nez v8, :cond_29

    :goto_15
    const/4 v8, 0x1

    goto :goto_16

    :cond_29
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    :cond_2a
    move/from16 v27, v14

    goto :goto_15

    .line 57
    :goto_16
    invoke-static {v7, v8, v3, v12}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :goto_17
    const/4 v3, 0x0

    .line 58
    :goto_18
    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 59
    iget-object v4, v0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v4, :cond_2b

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Lcom/inmobi/media/A5;

    invoke-virtual {v4, v10, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_2b
    :goto_19
    iget-object v3, v2, Lcom/inmobi/media/Le;->e:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object/from16 v4, v18

    move/from16 v3, v19

    move/from16 v5, v20

    move-object/from16 v2, v21

    move/from16 v6, v24

    move-object/from16 v7, v25

    move/from16 v8, v26

    move/from16 v14, v27

    goto/16 :goto_7

    .line 62
    :cond_2c
    iget-object v3, v0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    const-string v4, "companion"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v3, v3, Lcom/inmobi/media/Ue;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v28, v15

    move/from16 v8, v26

    :goto_1a
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_3d

    .line 65
    :cond_2d
    new-instance v5, Lcom/inmobi/media/U8;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v3, v7, v6, v8}, Lcom/inmobi/media/U8;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 66
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v4, v2, Lcom/inmobi/media/Le;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v3

    move-object v12, v8

    move/from16 v28, v15

    :goto_1b
    const/4 v14, 0x0

    goto/16 :goto_39

    :sswitch_6
    move/from16 v26, v8

    move/from16 v27, v14

    const/4 v8, 0x0

    .line 68
    const-string v4, "StaticResource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    move-object v12, v8

    move/from16 v28, v15

    goto/16 :goto_10

    .line 69
    :cond_2e
    const-string v3, "creativeType"

    invoke-interface {v1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_37

    .line 71
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 72
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_30

    :cond_2f
    const/4 v8, 0x1

    goto :goto_20

    .line 73
    :cond_30
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1c
    if-gt v6, v5, :cond_35

    if-nez v8, :cond_31

    move v12, v6

    goto :goto_1d

    :cond_31
    move v12, v5

    .line 74
    :goto_1d
    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x20

    .line 75
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v12

    if-gtz v12, :cond_32

    const/4 v12, 0x1

    goto :goto_1e

    :cond_32
    const/4 v12, 0x0

    :goto_1e
    if-nez v8, :cond_34

    if-nez v12, :cond_33

    const/4 v8, 0x1

    goto :goto_1c

    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_34
    if-nez v12, :cond_36

    :cond_35
    const/4 v8, 0x1

    goto :goto_1f

    :cond_36
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c

    .line 76
    :goto_1f
    invoke-static {v5, v8, v4, v6}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_21

    :goto_20
    const/4 v4, 0x0

    goto :goto_21

    :cond_37
    const/4 v8, 0x1

    move-object/from16 v4, v23

    :goto_21
    if-eqz v3, :cond_40

    .line 77
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_22
    if-gt v6, v5, :cond_3d

    if-nez v8, :cond_38

    move v12, v6

    goto :goto_23

    :cond_38
    move v12, v5

    .line 78
    :goto_23
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x20

    .line 79
    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v12

    if-gtz v12, :cond_39

    const/4 v12, 0x1

    goto :goto_24

    :cond_39
    const/4 v12, 0x0

    :goto_24
    if-nez v8, :cond_3b

    if-nez v12, :cond_3a

    const/4 v8, 0x1

    goto :goto_22

    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_3b
    if-nez v12, :cond_3c

    goto :goto_25

    :cond_3c
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    :cond_3d
    :goto_25
    add-int/lit8 v5, v5, 0x1

    .line 80
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 81
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_40

    .line 83
    sget-object v5, Lcom/inmobi/media/Le;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v5, :cond_3f

    .line 84
    sget-object v8, Lcom/inmobi/media/Le;->h:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v12, 0x1

    invoke-static {v3, v8, v12}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 85
    new-instance v3, Lcom/inmobi/media/Ke;

    invoke-direct {v3, v12, v4}, Lcom/inmobi/media/Ke;-><init>(BLjava/lang/String;)V

    .line 86
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v5, v2, Lcom/inmobi/media/Le;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_3f
    const/4 v12, 0x1

    .line 88
    iput-boolean v12, v0, Lcom/inmobi/media/Pe;->d:Z

    :cond_40
    :goto_27
    move-object v5, v4

    move/from16 v28, v15

    const/4 v12, 0x0

    goto/16 :goto_1b

    :sswitch_7
    move/from16 v26, v8

    move/from16 v27, v14

    .line 89
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_f

    .line 90
    :cond_41
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    .line 91
    :goto_28
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_42

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-static {v3}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v7

    if-nez v7, :cond_20

    .line 92
    :cond_42
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Tracking"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-static {v3}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    const/4 v7, 0x0

    :goto_29
    if-ge v7, v3, :cond_4d

    .line 94
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    const-string v12, "event"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 95
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4d

    .line 97
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_49

    .line 98
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    move v12, v8

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_2a
    move/from16 v28, v15

    if-gt v8, v12, :cond_47

    if-nez v14, :cond_43

    move v15, v8

    goto :goto_2b

    :cond_43
    move v15, v12

    .line 99
    :goto_2b
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v1, 0x20

    .line 100
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v15

    if-gtz v15, :cond_44

    const/4 v1, 0x1

    goto :goto_2c

    :cond_44
    const/4 v1, 0x0

    :goto_2c
    if-nez v14, :cond_46

    if-nez v1, :cond_45

    move-object/from16 v1, p1

    move/from16 v15, v28

    const/4 v14, 0x1

    goto :goto_2a

    :cond_45
    add-int/lit8 v8, v8, 0x1

    :goto_2d
    move-object/from16 v1, p1

    move/from16 v15, v28

    goto :goto_2a

    :cond_46
    if-nez v1, :cond_48

    :cond_47
    const/4 v1, 0x1

    goto :goto_2e

    :cond_48
    add-int/lit8 v12, v12, -0x1

    goto :goto_2d

    .line 101
    :goto_2e
    invoke-static {v12, v1, v7, v8}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2f

    :cond_49
    move/from16 v28, v15

    const/4 v8, 0x0

    .line 102
    :goto_2f
    invoke-static {v8}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 103
    iget-object v1, v0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_4a

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v10, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :goto_30
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto :goto_31

    .line 104
    :cond_4b
    sget-object v1, Lcom/inmobi/media/Pe;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_4c

    .line 105
    const-string v1, "unknown"

    .line 106
    :cond_4c
    new-instance v3, Lcom/inmobi/media/U8;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-direct {v3, v7, v14, v1, v12}, Lcom/inmobi/media/U8;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 107
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v1, v2, Lcom/inmobi/media/Le;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_4d
    move/from16 v28, v15

    goto :goto_30

    :cond_4e
    move/from16 v28, v15

    const/4 v12, 0x0

    const/4 v14, 0x0

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_29

    .line 109
    :goto_31
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move-object/from16 v1, p1

    move/from16 v15, v28

    goto/16 :goto_28

    :sswitch_8
    move/from16 v26, v8

    move/from16 v27, v14

    move/from16 v28, v15

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 110
    const-string v1, "CompanionClickThrough"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto/16 :goto_38

    .line 111
    :cond_4f
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5a

    .line 112
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_50

    goto :goto_36

    .line 114
    :cond_50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v4, v14

    move v7, v4

    :goto_32
    if-gt v7, v3, :cond_55

    if-nez v4, :cond_51

    move v5, v7

    goto :goto_33

    :cond_51
    move v5, v3

    .line 115
    :goto_33
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    .line 116
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_52

    const/4 v5, 0x1

    goto :goto_34

    :cond_52
    move v5, v14

    :goto_34
    if-nez v4, :cond_54

    if-nez v5, :cond_53

    const/4 v4, 0x1

    goto :goto_32

    :cond_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_54
    if-nez v5, :cond_56

    :cond_55
    const/4 v4, 0x1

    goto :goto_35

    :cond_56
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 117
    :goto_35
    invoke-static {v3, v4, v1, v7}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_37

    :cond_57
    :goto_36
    move-object v3, v12

    .line 118
    :goto_37
    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 119
    iput-object v3, v2, Lcom/inmobi/media/Le;->c:Ljava/lang/String;

    goto :goto_38

    :sswitch_9
    move/from16 v26, v8

    move/from16 v27, v14

    move/from16 v28, v15

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 120
    const-string v1, "IFrameResource"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    goto :goto_38

    .line 121
    :cond_58
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5a

    .line 122
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 124
    new-instance v3, Lcom/inmobi/media/Ke;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v1}, Lcom/inmobi/media/Ke;-><init>(BLjava/lang/String;)V

    .line 125
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v1, v2, Lcom/inmobi/media/Le;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_59
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    goto/16 :goto_e

    :cond_5a
    :goto_38
    move-object/from16 v5, v23

    .line 127
    :goto_39
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move-object/from16 v1, p1

    move-object/from16 v4, v22

    move/from16 v6, v24

    move-object/from16 v7, v25

    move/from16 v8, v26

    move/from16 v14, v27

    move/from16 v15, v28

    goto/16 :goto_c

    .line 128
    :goto_3a
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move-object/from16 v1, p1

    move-object/from16 v4, v18

    move/from16 v5, v20

    move-object/from16 v2, v21

    move/from16 v6, v24

    move-object/from16 v7, v25

    move/from16 v8, v26

    :goto_3b
    move/from16 v14, v27

    move/from16 v15, v28

    goto/16 :goto_7

    :cond_5b
    move-object/from16 v21, v2

    :goto_3c
    move/from16 v20, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v27, v14

    move/from16 v28, v15

    goto/16 :goto_1a

    :cond_5c
    move-object/from16 v21, v2

    move-object/from16 v18, v4

    goto :goto_3c

    .line 129
    :goto_3d
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move-object/from16 v1, p1

    move-object/from16 v4, v18

    move/from16 v5, v20

    move-object/from16 v2, v21

    move/from16 v6, v24

    move-object/from16 v7, v25

    goto :goto_3b

    :cond_5d
    move-object/from16 v21, v2

    move/from16 v20, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v27, v14

    move/from16 v28, v15

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 130
    const-string v1, "Linear"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    move-object/from16 v12, p1

    goto/16 :goto_6

    .line 131
    :cond_5e
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    move v3, v14

    move v4, v3

    move v7, v4

    .line 132
    :goto_3e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_64

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-static {v2}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v5

    if-nez v5, :cond_5f

    goto :goto_3f

    :cond_5f
    if-eqz v3, :cond_60

    if-nez v4, :cond_62

    .line 133
    :cond_60
    iget-object v1, v0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_61

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "VAST Schema Validation Error.Duration tag not found"

    invoke-virtual {v1, v10, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    const/16 v1, 0x65

    .line 134
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Pe;->c(I)V

    :cond_62
    if-eqz v3, :cond_63

    if-eqz v4, :cond_63

    if-eqz v7, :cond_63

    move-object/from16 v12, p1

    const/16 v1, 0x65

    const/4 v6, 0x4

    const/4 v15, 0x1

    goto/16 :goto_59

    :cond_63
    move-object/from16 v12, p1

    move v15, v14

    const/16 v1, 0x65

    const/4 v6, 0x4

    goto/16 :goto_59

    .line 135
    :cond_64
    :goto_3f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_65

    invoke-static {v2}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v2

    if-nez v2, :cond_65

    .line 136
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x7a2ef3da

    if-eq v5, v6, :cond_93

    const v6, -0x72e14e4c

    if-eq v5, v6, :cond_8d

    const v6, -0x16f37aed

    if-eq v5, v6, :cond_68

    const v6, 0x247392d0

    if-eq v5, v6, :cond_66

    :cond_65
    :goto_40
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move/from16 v19, v3

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v6, 0x4

    const/16 v8, 0x20

    goto/16 :goto_5b

    :cond_66
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    goto :goto_40

    .line 137
    :cond_67
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_40

    .line 138
    :cond_68
    const-string v5, "MediaFiles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_40

    .line 139
    :cond_69
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    move v4, v14

    .line 140
    :goto_41
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6d

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-static {v2}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v6

    if-nez v6, :cond_6a

    goto :goto_44

    :cond_6a
    if-nez v4, :cond_6b

    const/16 v2, 0x191

    .line 141
    invoke-virtual {v0, v2}, Lcom/inmobi/media/Pe;->c(I)V

    :goto_42
    move v2, v14

    goto :goto_43

    .line 142
    :cond_6b
    iget-object v2, v0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    .line 143
    iget-object v2, v2, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6c

    const/16 v2, 0x193

    .line 145
    invoke-virtual {v0, v2}, Lcom/inmobi/media/Pe;->c(I)V

    goto :goto_42

    :cond_6c
    const/4 v2, 0x1

    :goto_43
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move v7, v2

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x4

    const/16 v8, 0x20

    goto/16 :goto_5c

    .line 146
    :cond_6d
    :goto_44
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MediaFile"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-static {v2}, Lcom/inmobi/media/Pe;->b(I)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 147
    iget-object v2, v0, Lcom/inmobi/media/Pe;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getBitRate()Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;

    move-result-object v2

    .line 148
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    move-object v6, v12

    move-object v7, v6

    move v8, v14

    move v15, v8

    :goto_45
    if-ge v8, v4, :cond_76

    move-object/from16 v12, p1

    .line 149
    invoke-interface {v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v1

    if-eqz v14, :cond_74

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v1

    move/from16 v19, v3

    const v3, -0x6188493

    if-eq v1, v3, :cond_72

    const v3, 0x368f3a

    if-eq v1, v3, :cond_70

    const v3, 0x31151bf4

    if-eq v1, v3, :cond_6e

    goto :goto_46

    :cond_6e
    const-string v1, "delivery"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    goto :goto_46

    .line 150
    :cond_6f
    invoke-interface {v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_46

    .line 151
    :cond_70
    const-string v1, "type"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    goto :goto_46

    .line 152
    :cond_71
    invoke-interface {v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_46

    .line 153
    :cond_72
    const-string v1, "bitrate"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    goto :goto_46

    .line 154
    :cond_73
    :try_start_3
    invoke-interface {v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "valueOf(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v15, v1

    goto :goto_46

    .line 155
    :catch_3
    iget-object v1, v0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_75

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v3, "Invalid value found for BitRate."

    invoke-virtual {v1, v10, v3}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_74
    move/from16 v19, v3

    :cond_75
    :goto_46
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v18

    move/from16 v3, v19

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto :goto_45

    :cond_76
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move/from16 v19, v3

    .line 156
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_8a

    .line 157
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 158
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_78

    :cond_77
    move/from16 v22, v1

    move-object/from16 v23, v5

    goto :goto_4d

    .line 159
    :cond_78
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_47
    move/from16 v22, v1

    if-gt v8, v4, :cond_7e

    if-nez v14, :cond_79

    move v1, v8

    goto :goto_48

    :cond_79
    move v1, v4

    .line 160
    :goto_48
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-object/from16 v23, v5

    const/16 v5, 0x20

    .line 161
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    if-gtz v1, :cond_7a

    const/4 v1, 0x1

    goto :goto_49

    :cond_7a
    const/4 v1, 0x0

    :goto_49
    if-nez v14, :cond_7c

    if-nez v1, :cond_7b

    move/from16 v1, v22

    move-object/from16 v5, v23

    const/4 v14, 0x1

    goto :goto_47

    :cond_7b
    add-int/lit8 v8, v8, 0x1

    :goto_4a
    move/from16 v1, v22

    move-object/from16 v5, v23

    goto :goto_47

    :cond_7c
    if-nez v1, :cond_7d

    :goto_4b
    const/4 v1, 0x1

    goto :goto_4c

    :cond_7d
    add-int/lit8 v4, v4, -0x1

    goto :goto_4a

    :cond_7e
    move-object/from16 v23, v5

    goto :goto_4b

    .line 162
    :goto_4c
    invoke-static {v4, v1, v3, v8}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4e

    :goto_4d
    const/4 v3, 0x0

    .line 163
    :goto_4e
    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_80

    :cond_7f
    const/16 v8, 0x20

    goto/16 :goto_55

    .line 164
    :cond_80
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$BitRateConfig;->isBitRateMandatory()Z

    move-result v1

    if-eqz v1, :cond_81

    if-lez v15, :cond_7f

    :cond_81
    if-eqz v6, :cond_7f

    .line 165
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_4f
    if-gt v2, v1, :cond_87

    if-nez v4, :cond_82

    move v5, v2

    goto :goto_50

    :cond_82
    move v5, v1

    .line 166
    :goto_50
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x20

    .line 167
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_83

    const/4 v5, 0x1

    goto :goto_51

    :cond_83
    const/4 v5, 0x0

    :goto_51
    if-nez v4, :cond_85

    if-nez v5, :cond_84

    const/4 v4, 0x1

    goto :goto_4f

    :cond_84
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_85
    if-nez v5, :cond_86

    :goto_52
    const/4 v4, 0x1

    goto :goto_53

    :cond_86
    add-int/lit8 v1, v1, -0x1

    goto :goto_4f

    :cond_87
    const/16 v8, 0x20

    goto :goto_52

    .line 168
    :goto_53
    invoke-static {v1, v4, v6, v2}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v2, "Progressive"

    invoke-static {v1, v2, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_88

    goto :goto_55

    .line 170
    :cond_88
    iget-object v1, v0, Lcom/inmobi/media/Pe;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getAllowedContentType()Ljava/util/List;

    move-result-object v1

    if-eqz v7, :cond_8b

    .line 171
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_54
    if-ge v5, v2, :cond_8b

    .line 172
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 173
    iget-object v4, v0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    new-instance v6, Lcom/inmobi/media/Me;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v6, v3, v15}, Lcom/inmobi/media/Me;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    const-string v14, "vastMediaFile"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v4, v4, Lcom/inmobi/media/Ue;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    goto :goto_54

    :goto_55
    move-object/from16 v1, v18

    move/from16 v3, v19

    move/from16 v2, v22

    move-object/from16 v5, v23

    const/4 v4, 0x1

    :goto_56
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_41

    :cond_8a
    move-object/from16 v23, v5

    const/16 v8, 0x20

    :cond_8b
    const/4 v4, 0x1

    goto :goto_57

    :cond_8c
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move/from16 v19, v3

    move-object/from16 v23, v5

    const/16 v8, 0x20

    .line 176
    :goto_57
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    move-object/from16 v1, v18

    move/from16 v3, v19

    move-object/from16 v5, v23

    goto :goto_56

    :cond_8d
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move/from16 v19, v3

    const/16 v8, 0x20

    .line 177
    const-string v1, "Duration"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v6, 0x4

    goto/16 :goto_5b

    .line 178
    :cond_8e
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_92

    .line 179
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    .line 181
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, "^(?:[01]\\d|2[0-3]):[0-5]\\d:[0-5]\\d(?:\\.\\d{1,3})?$"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lkotlin/text/Regex;->k(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8f

    goto :goto_58

    .line 182
    :cond_8f
    iget-object v2, v0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    .line 183
    iput-object v1, v2, Lcom/inmobi/media/Ue;->g:Ljava/lang/String;

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v3, 0x1

    goto :goto_5c

    .line 184
    :cond_90
    :goto_58
    iget-object v2, v0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_91

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VAST Schema Validation Error. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Media Duration invalid."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v10, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    const/16 v1, 0x65

    .line 185
    invoke-virtual {v0, v1}, Lcom/inmobi/media/Pe;->c(I)V

    const/4 v15, 0x0

    :goto_59
    move/from16 v5, v20

    const/4 v2, 0x1

    const/4 v14, 0x1

    goto :goto_5e

    :cond_92
    const/16 v1, 0x65

    :goto_5a
    const/4 v2, 0x1

    goto :goto_5b

    :cond_93
    move-object/from16 v12, p1

    move-object/from16 v18, v1

    move/from16 v19, v3

    const/16 v1, 0x65

    const/4 v6, 0x4

    const/16 v8, 0x20

    .line 186
    const-string v3, "VideoClicks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    goto :goto_5a

    :cond_94
    const/4 v2, 0x1

    .line 187
    invoke-virtual {v0, v12, v2}, Lcom/inmobi/media/Pe;->a(Lorg/xmlpull/v1/XmlPullParser;Z)V

    :goto_5b
    move/from16 v3, v19

    .line 188
    :goto_5c
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v5

    move v2, v5

    move-object/from16 v1, v18

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_3e

    :cond_95
    move-object/from16 v21, v2

    move/from16 v20, v5

    move/from16 v24, v6

    move-object/from16 v25, v7

    move v6, v12

    move/from16 v27, v14

    move/from16 v28, v15

    const/4 v2, 0x1

    move-object v12, v1

    move v1, v8

    :goto_5d
    move/from16 v5, v20

    move/from16 v14, v27

    move/from16 v15, v28

    .line 189
    :goto_5e
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move v8, v1

    move-object v1, v12

    move-object/from16 v2, v21

    move-object/from16 v7, v25

    move v12, v6

    move/from16 v6, v24

    goto/16 :goto_3

    :sswitch_a
    move-object v12, v1

    move-object/from16 v21, v2

    move/from16 v24, v6

    .line 190
    const-string v1, "AdVerifications"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    goto :goto_5f

    .line 191
    :cond_96
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_5f
    move/from16 v6, v24

    .line 192
    :goto_60
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    move-object v1, v12

    move-object/from16 v2, v21

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bd325cb -> :sswitch_a
        -0x64e1597c -> :sswitch_3
        0x401e1e8 -> :sswitch_2
        0xaf84834 -> :sswitch_1
        0x7e026e29 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x165f3d2e -> :sswitch_9
        -0x14c116d7 -> :sswitch_8
        0x247392d0 -> :sswitch_7
        0x285474bc -> :sswitch_6
        0x6fec8cd3 -> :sswitch_5
        0x72ef4cd9 -> :sswitch_4
    .end sparse-switch
.end method

.method public final d(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    .line 1
    const-string v0, "TAG"

    .line 2
    .line 3
    const-string v1, "Pe"

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6
    .line 7
    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return p1

    .line 10
    :catch_0
    iget-object p1, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast p1, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    const-string v0, "VAST Schema validation error: VAST node at appropriate hierarchy not found."

    .line 20
    .line 21
    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_1
    iget-object p1, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast p1, Lcom/inmobi/media/A5;

    .line 33
    .line 34
    const-string v0, "Parsing failed."

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    const/4 p1, -0x1

    .line 40
    return p1
.end method

.method public final e(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "TrackingEvents"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "Tracking"

    .line 42
    .line 43
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x0

    .line 60
    :goto_2
    if-ge v1, v0, :cond_3

    .line 61
    .line 62
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v3, "event"

    .line 67
    .line 68
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x4

    .line 83
    if-ne v1, v2, :cond_3

    .line 84
    .line 85
    sget-object v1, Lcom/inmobi/media/Pe;->f:Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    check-cast v0, Ljava/lang/String;

    .line 101
    .line 102
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v2, "getText(...)"

    .line 107
    .line 108
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/Pe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    :goto_3
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    goto :goto_0
.end method

.method public final f(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/inmobi/media/Pe;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/inmobi/media/Pe;->e:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/inmobi/media/Pe;->a:Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$VastVideoConfig;->getMaxWrapperLimit()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, "TAG"

    .line 14
    .line 15
    const-string v4, "Pe"

    .line 16
    .line 17
    if-le v0, v2, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Lcom/inmobi/media/A5;

    .line 27
    .line 28
    const-string v0, "Schema Validation Error:Max VAST wrapper limit exceeded"

    .line 29
    .line 30
    invoke-virtual {p1, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const/16 p1, 0x12e

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->c(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v2, 0x0

    .line 44
    move v5, v2

    .line 45
    move v6, v5

    .line 46
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    const/16 v8, 0x65

    .line 51
    .line 52
    const-string v9, "VAST Wrapper Error: VastAdTagUri at appropriate hierarchy not found or invalid"

    .line 53
    .line 54
    if-eqz v7, :cond_6

    .line 55
    .line 56
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const-string v10, "Wrapper"

    .line 61
    .line 62
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_6

    .line 67
    .line 68
    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    if-eqz v5, :cond_3

    .line 76
    .line 77
    if-nez v6, :cond_5

    .line 78
    .line 79
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    check-cast p1, Lcom/inmobi/media/A5;

    .line 87
    .line 88
    invoke-virtual {p1, v4, v9}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    invoke-virtual {p0, v8}, Lcom/inmobi/media/Pe;->c(I)V

    .line 92
    .line 93
    .line 94
    :cond_5
    return-void

    .line 95
    :cond_6
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    if-eqz v7, :cond_1e

    .line 100
    .line 101
    invoke-static {v0}, Lcom/inmobi/media/Pe;->b(I)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_1e

    .line 106
    .line 107
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_1e

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    const-string v10, "getText(...)"

    .line 118
    .line 119
    const/4 v11, 0x4

    .line 120
    sparse-switch v7, :sswitch_data_0

    .line 121
    .line 122
    .line 123
    goto/16 :goto_9

    .line 124
    .line 125
    :sswitch_0
    const-string v7, "Impression"

    .line 126
    .line 127
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_7

    .line 132
    .line 133
    goto/16 :goto_9

    .line 134
    .line 135
    :cond_7
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-ne v0, v11, :cond_8

    .line 140
    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v7, v0}, Lcom/inmobi/media/Pe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    move v6, v1

    .line 152
    goto/16 :goto_9

    .line 153
    .line 154
    :cond_8
    iget-object v7, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    .line 155
    .line 156
    if-eqz v7, :cond_1e

    .line 157
    .line 158
    const-string v8, "VAST Wrapper Error: VastAdTagUri at appropriate hierarchy not found or invalid - "

    .line 159
    .line 160
    invoke-static {v4, v3, v8, v0}, Lcom/inmobi/media/X8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v7, Lcom/inmobi/media/A5;

    .line 165
    .line 166
    invoke-virtual {v7, v4, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_9

    .line 170
    .line 171
    :sswitch_1
    const-string v7, "TrackingEvents"

    .line 172
    .line 173
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_9

    .line 178
    .line 179
    goto/16 :goto_9

    .line 180
    .line 181
    :cond_9
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_9

    .line 185
    .line 186
    :sswitch_2
    const-string v7, "Extensions"

    .line 187
    .line 188
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_a

    .line 193
    .line 194
    goto/16 :goto_9

    .line 195
    .line 196
    :cond_a
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_9

    .line 200
    .line 201
    :sswitch_3
    const-string v7, "Error"

    .line 202
    .line 203
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_b

    .line 208
    .line 209
    goto/16 :goto_9

    .line 210
    .line 211
    :cond_b
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-ne v0, v11, :cond_1e

    .line 216
    .line 217
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string v7, "error"

    .line 225
    .line 226
    invoke-virtual {p0, v7, v0}, Lcom/inmobi/media/Pe;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_9

    .line 230
    .line 231
    :sswitch_4
    const-string v7, "VASTAdTagURI"

    .line 232
    .line 233
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_c

    .line 238
    .line 239
    goto/16 :goto_9

    .line 240
    .line 241
    :cond_c
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-ne v0, v11, :cond_1a

    .line 246
    .line 247
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-eqz v0, :cond_14

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-nez v5, :cond_d

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_d
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    sub-int/2addr v5, v1

    .line 268
    move v7, v2

    .line 269
    move v8, v7

    .line 270
    :goto_2
    if-gt v7, v5, :cond_13

    .line 271
    .line 272
    if-nez v8, :cond_e

    .line 273
    .line 274
    move v10, v7

    .line 275
    goto :goto_3

    .line 276
    :cond_e
    move v10, v5

    .line 277
    :goto_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    const/16 v11, 0x20

    .line 282
    .line 283
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 284
    .line 285
    .line 286
    move-result v10

    .line 287
    if-gtz v10, :cond_f

    .line 288
    .line 289
    move v10, v1

    .line 290
    goto :goto_4

    .line 291
    :cond_f
    move v10, v2

    .line 292
    :goto_4
    if-nez v8, :cond_11

    .line 293
    .line 294
    if-nez v10, :cond_10

    .line 295
    .line 296
    move v8, v1

    .line 297
    goto :goto_2

    .line 298
    :cond_10
    add-int/lit8 v7, v7, 0x1

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_11
    if-nez v10, :cond_12

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_12
    add-int/lit8 v5, v5, -0x1

    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_13
    :goto_5
    invoke-static {v5, v1, v0, v7}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    goto :goto_7

    .line 312
    :cond_14
    :goto_6
    const/4 v0, 0x0

    .line 313
    :goto_7
    const/16 v5, 0x12c

    .line 314
    .line 315
    if-nez v0, :cond_16

    .line 316
    .line 317
    iget-object p1, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    .line 318
    .line 319
    if-eqz p1, :cond_15

    .line 320
    .line 321
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    check-cast p1, Lcom/inmobi/media/A5;

    .line 325
    .line 326
    invoke-virtual {p1, v4, v9}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_15
    invoke-virtual {p0, v5}, Lcom/inmobi/media/Pe;->c(I)V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_16
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    if-eqz v7, :cond_18

    .line 338
    .line 339
    new-instance v5, Lcom/inmobi/media/N9;

    .line 340
    .line 341
    iget-object v7, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    .line 342
    .line 343
    invoke-direct {v5, v0, v7}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Lcom/inmobi/media/z5;)V

    .line 344
    .line 345
    .line 346
    iput-boolean v2, v5, Lcom/inmobi/media/N9;->t:Z

    .line 347
    .line 348
    iput-boolean v2, v5, Lcom/inmobi/media/N9;->u:Z

    .line 349
    .line 350
    iput-boolean v2, v5, Lcom/inmobi/media/N9;->x:Z

    .line 351
    .line 352
    iput-boolean v1, v5, Lcom/inmobi/media/N9;->r:Z

    .line 353
    .line 354
    const-string v0, "mRequest"

    .line 355
    .line 356
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v5}, Lcom/inmobi/media/N9;->b()Lcom/inmobi/media/P9;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lcom/inmobi/media/P9;->b()Z

    .line 364
    .line 365
    .line 366
    move-result v5

    .line 367
    if-eqz v5, :cond_17

    .line 368
    .line 369
    const/16 v0, 0x12d

    .line 370
    .line 371
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Pe;->c(I)V

    .line 372
    .line 373
    .line 374
    goto :goto_8

    .line 375
    :cond_17
    invoke-virtual {v0}, Lcom/inmobi/media/P9;->a()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {p0, v0}, Lcom/inmobi/media/Pe;->a(Ljava/lang/String;)Lcom/inmobi/media/Ue;

    .line 380
    .line 381
    .line 382
    goto :goto_8

    .line 383
    :cond_18
    invoke-virtual {p0, v5}, Lcom/inmobi/media/Pe;->c(I)V

    .line 384
    .line 385
    .line 386
    :goto_8
    iget-object v0, p0, Lcom/inmobi/media/Pe;->c:Lcom/inmobi/media/Ue;

    .line 387
    .line 388
    iget v0, v0, Lcom/inmobi/media/Ue;->l:I

    .line 389
    .line 390
    if-eqz v0, :cond_19

    .line 391
    .line 392
    return-void

    .line 393
    :cond_19
    move v5, v1

    .line 394
    goto :goto_9

    .line 395
    :cond_1a
    iget-object p1, p0, Lcom/inmobi/media/Pe;->b:Lcom/inmobi/media/z5;

    .line 396
    .line 397
    if-eqz p1, :cond_1b

    .line 398
    .line 399
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    check-cast p1, Lcom/inmobi/media/A5;

    .line 403
    .line 404
    invoke-virtual {p1, v4, v9}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    :cond_1b
    invoke-virtual {p0, v8}, Lcom/inmobi/media/Pe;->c(I)V

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :sswitch_5
    const-string v7, "VideoClicks"

    .line 412
    .line 413
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    if-nez v0, :cond_1c

    .line 418
    .line 419
    goto :goto_9

    .line 420
    :cond_1c
    invoke-virtual {p0, p1, v2}, Lcom/inmobi/media/Pe;->a(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 421
    .line 422
    .line 423
    goto :goto_9

    .line 424
    :sswitch_6
    const-string v7, "AdVerifications"

    .line 425
    .line 426
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    if-nez v0, :cond_1d

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 434
    .line 435
    .line 436
    :cond_1e
    :goto_9
    invoke-virtual {p0, p1}, Lcom/inmobi/media/Pe;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    goto/16 :goto_0

    .line 441
    .line 442
    nop

    .line 443
    :sswitch_data_0
    .sparse-switch
        -0x7bd325cb -> :sswitch_6
        -0x7a2ef3da -> :sswitch_5
        -0x2303541f -> :sswitch_4
        0x401e1e8 -> :sswitch_3
        0xaf84834 -> :sswitch_2
        0x247392d0 -> :sswitch_1
        0x7e026e29 -> :sswitch_0
    .end sparse-switch
.end method
