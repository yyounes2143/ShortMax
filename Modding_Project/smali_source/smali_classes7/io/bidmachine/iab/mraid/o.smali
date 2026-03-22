.class public Lio/bidmachine/iab/mraid/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/iab/mraid/o$b;
    }
.end annotation


# static fields
.field public static final a:J

.field private static final b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:[C
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final d:Lio/bidmachine/iab/mraid/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field static f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1e

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lio/bidmachine/iab/mraid/o;->a:J

    .line 10
    .line 11
    const-string v28, "storePicture"

    .line 12
    .line 13
    const-string v29, "openPrivacySheet"

    .line 14
    .line 15
    const-string v2, "close"

    .line 16
    .line 17
    const-string v3, "expand"

    .line 18
    .line 19
    const-string v4, "open"

    .line 20
    .line 21
    const-string v5, "playVideo"

    .line 22
    .line 23
    const-string v6, "resize"

    .line 24
    .line 25
    const-string v7, "setOrientationProperties"

    .line 26
    .line 27
    const-string v8, "setResizeProperties"

    .line 28
    .line 29
    const-string v9, "useCustomClose"

    .line 30
    .line 31
    const-string v10, "noFill"

    .line 32
    .line 33
    const-string v11, "loaded"

    .line 34
    .line 35
    const-string v12, "AdStarted"

    .line 36
    .line 37
    const-string v13, "AdStopped"

    .line 38
    .line 39
    const-string v14, "AdSkipped"

    .line 40
    .line 41
    const-string v15, "AdSkippableStateChange"

    .line 42
    .line 43
    const-string v16, "AdVideoStart"

    .line 44
    .line 45
    const-string v17, "AdVideoFirstQuartile"

    .line 46
    .line 47
    const-string v18, "AdVideoMidpoint"

    .line 48
    .line 49
    const-string v19, "AdVideoThirdQuartile"

    .line 50
    .line 51
    const-string v20, "AdVideoComplete"

    .line 52
    .line 53
    const-string v21, "AdUserClose"

    .line 54
    .line 55
    const-string v22, "AdPaused"

    .line 56
    .line 57
    const-string v23, "AdPlaying"

    .line 58
    .line 59
    const-string v24, "AdClickThru"

    .line 60
    .line 61
    const-string v25, "AdLog"

    .line 62
    .line 63
    const-string v26, "AdError"

    .line 64
    .line 65
    const-string v27, "createCalendarEvent"

    .line 66
    .line 67
    filled-new-array/range {v2 .. v29}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lio/bidmachine/iab/mraid/o;->b:Ljava/util/List;

    .line 76
    .line 77
    const/4 v0, 0x2

    .line 78
    new-array v0, v0, [C

    .line 79
    .line 80
    fill-array-data v0, :array_0

    .line 81
    .line 82
    .line 83
    sput-object v0, Lio/bidmachine/iab/mraid/o;->c:[C

    .line 84
    .line 85
    new-instance v0, Lio/bidmachine/iab/mraid/o$b;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-direct {v0, v1}, Lio/bidmachine/iab/mraid/o$b;-><init>(Lio/bidmachine/iab/mraid/o$a;)V

    .line 89
    .line 90
    .line 91
    sput-object v0, Lio/bidmachine/iab/mraid/o;->d:Lio/bidmachine/iab/mraid/g;

    .line 92
    .line 93
    return-void

    .line 94
    nop

    .line 95
    :array_0
    .array-data 2
        0x22s
        0x27s
    .end array-data
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    sget-object p2, Lio/bidmachine/iab/mraid/o;->c:[C

    .line 18
    .line 19
    invoke-static {p0, p2}, Lio/bidmachine/iab/mraid/o;->c(Ljava/lang/String;[C)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :cond_1
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "<%s[^>]*>"

    .line 28
    .line 29
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x2

    .line 34
    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    :cond_2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {p1, p2}, Lio/bidmachine/iab/mraid/o;->e(ILjava/util/List;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    return p1

    .line 59
    :cond_3
    :goto_0
    return v1
.end method

.method static b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\" /><style>body { margin:0; padding:0;}*:not(input) { -webkit-touch-callout:none; -webkit-user-select:none; -webkit-text-size-adjust:none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); }</style>"

    .line 2
    .line 3
    return-object v0
.end method

.method static varargs c(Ljava/lang/String;[C)Ljava/util/List;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [C
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[C)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_4

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    :try_start_0
    array-length v1, p1

    .line 16
    new-array v1, v1, [I

    .line 17
    .line 18
    const/4 v2, -0x1

    .line 19
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    move v4, v3

    .line 24
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-ge v4, v5, :cond_4

    .line 29
    .line 30
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    move v6, v3

    .line 35
    :goto_1
    array-length v7, p1

    .line 36
    if-ge v6, v7, :cond_3

    .line 37
    .line 38
    aget-char v7, p1, v6

    .line 39
    .line 40
    if-ne v5, v7, :cond_2

    .line 41
    .line 42
    aget v5, v1, v6

    .line 43
    .line 44
    if-le v5, v2, :cond_1

    .line 45
    .line 46
    new-instance v7, Landroid/util/Pair;

    .line 47
    .line 48
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-direct {v7, v5, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    aput v2, v1, v6

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    aput v4, v1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    :cond_4
    :goto_3
    return-object v0
.end method

.method static d(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p0    # Ljava/lang/StringBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "head"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0, v1, v2}, Lio/bidmachine/iab/mraid/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, -0x1

    .line 20
    if-le v0, v1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lio/bidmachine/iab/mraid/o;->b()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private static e(ILjava/util/List;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/util/Pair;

    .line 16
    .line 17
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lt p0, v1, :cond_0

    .line 26
    .line 27
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-gt p0, v0, :cond_0

    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :cond_1
    const/4 p0, 0x1

    .line 40
    return p0
.end method

.method static synthetic f(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/iab/mraid/o;->i(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic g(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/o;->k(Ljava/lang/String;Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static h()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/o;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lio/bidmachine/iab/mraid/o;->f:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "J3VzZSBzdHJpY3QnOyhmdW5jdGlvbigpe2Z1bmN0aW9uIGsoYSl7aWYoIWMuaXNOYXRpdmVTZGtSZWFkeSl7Y29uc29sZS5sb2coInJlamVjdGluZyAiK2ErIiBiZWNhdXNlIG1yYWlkIGlzIG5vdCByZWFkeSIpO2MuZmlyZUVycm9yRXZlbnQoIm1yYWlkIGlzIG5vdCByZWFkeSIsYSk7cmV0dXJufXZhciBiPSJtcmFpZDovLyIrYTtpZihjLm5hdGl2ZUNhbGxSdW5uaW5nKWMubmF0aXZlQ2FsbFF1ZXVlLnB1c2goYik7ZWxzZXtjLm5hdGl2ZUNhbGxSdW5uaW5nPXRydWU7d2luZG93LmxvY2F0aW9uPWJ9fWZ1bmN0aW9uIHcoYSl7dmFyIGI9QXJyYXkucHJvdG90eXBlLnNsaWNlLmNhbGwoYXJndW1lbnRzKTtiLnNoaWZ0KCk7ZC5pKCJmaXJlRXZlbnQgIithKyIgWyIrYi50b1N0cmluZygpKyJdIik7dmFyIGU9cVthXTtpZihlKXt2YXIgZj1lLnNsaWNlKCk7dmFyIGc9Zi5sZW5ndGg7ZC5pKGcrIiBsaXN0ZW5lcihzKSBmb3VuZCIpO2Zvcih2YXIgbD0wO2w8ZztsKyspZltsXS5hcHBseShudWxsLApiKX1lbHNlIGQuaSgibm8gbGlzdGVuZXJzIGZvdW5kIGZvciAiK2EpfWZ1bmN0aW9uIEooYSxiKXtmb3IodmFyIGUgaW4gYilpZihiW2VdPT09YSlyZXR1cm4gdHJ1ZTtyZXR1cm4gZmFsc2V9ZnVuY3Rpb24gRihhLGIpe3ZhciBlPXRydWU7dmFyIGY9TltiXTtmb3IodmFyIGcgaW4gYSl7dmFyIGw9ZltnXTt2YXIgdT1hW2ddO2lmKGwmJiFsKHUpKXtjLmZpcmVFcnJvckV2ZW50KCJWYWx1ZSBvZiBwcm9wZXJ0eSAiK2crIiAoIit1KyIpIGlzIGludmFsaWQiLCJtcmFpZC4iK2IpO2U9ZmFsc2V9fXJldHVybiBlfWZ1bmN0aW9uIE8oYSl7ZC5kKCJpc0Nsb3NlUmVnaW9uT25TY3JlZW4iKTtkLmQoImRlZmF1bHRQb3NpdGlvbiAiK20ueCsiICIrbS55KTtkLmQoIm9mZnNldCAiK2Eub2Zmc2V0WCsiICIrYS5vZmZzZXRZKTt2YXIgYj17fTtiLng9bS54K2Eub2Zmc2V0WDtiLnk9bS55K2Eub2Zmc2V0WTtiLndpZHRoPWEud2lkdGg7Yi5oZWlnaHQ9YS5oZWlnaHQ7eCgicmVzaXplUmVjdCIsCmIpO3ZhciBlPWEuaGFzT3duUHJvcGVydHkoImN1c3RvbUNsb3NlUG9zaXRpb24iKT9hLmN1c3RvbUNsb3NlUG9zaXRpb246aC5jdXN0b21DbG9zZVBvc2l0aW9uO2QuZCgiY3VzdG9tQ2xvc2VQb3NpdGlvbiAiK2UpO3ZhciBmPXsid2lkdGgiOjUwLCJoZWlnaHQiOjUwfTtpZihlLnNlYXJjaCgibGVmdCIpIT09LTEpZi54PWIueDtlbHNlIGlmKGUuc2VhcmNoKCJjZW50ZXIiKSE9PS0xKWYueD1iLngrYi53aWR0aC8yLTI1O2Vsc2UgaWYoZS5zZWFyY2goInJpZ2h0IikhPT0tMSlmLng9Yi54K2Iud2lkdGgtNTA7aWYoZS5zZWFyY2goInRvcCIpIT09LTEpZi55PWIueTtlbHNlIGlmKGU9PT0iY2VudGVyIilmLnk9Yi55K2IuaGVpZ2h0LzItMjU7ZWxzZSBpZihlLnNlYXJjaCgiYm90dG9tIikhPT0tMSlmLnk9Yi55K2IuaGVpZ2h0LTUwO3ZhciBnPXsieCI6MCwieSI6MH07Zy53aWR0aD1yLndpZHRoO2cuaGVpZ2h0PXIuaGVpZ2h0O3JldHVybiBLKGcsZil9ZnVuY3Rpb24gUChhKXtkLmQoImZpdFJlc2l6ZVZpZXdPblNjcmVlbiIpOwpkLmQoImRlZmF1bHRQb3NpdGlvbiAiK20ueCsiICIrbS55KTtkLmQoIm9mZnNldCAiK2Eub2Zmc2V0WCsiICIrYS5vZmZzZXRZKTt2YXIgYj17fTtiLng9bS54K2Eub2Zmc2V0WDtiLnk9bS55K2Eub2Zmc2V0WTtiLndpZHRoPWEud2lkdGg7Yi5oZWlnaHQ9YS5oZWlnaHQ7eCgicmVzaXplUmVjdCIsYik7dmFyIGU9eyJ4IjowLCJ5IjowfTtlLndpZHRoPXIud2lkdGg7ZS5oZWlnaHQ9ci5oZWlnaHQ7dmFyIGY9eyJ4IjowLCJ5IjowfTtpZihLKGUsYikpe2QuZCgibm8gYWRqdXN0bWVudCBuZWNlc3NhcnkiKTtyZXR1cm4gZn1pZihiLng8ZS54KWYueD1lLngtYi54O2Vsc2UgaWYoYi54K2Iud2lkdGg+ZS54K2Uud2lkdGgpZi54PWUueCtlLndpZHRoLShiLngrYi53aWR0aCk7ZC5kKCJhZGp1c3RtZW50cy54ICIrZi54KTtpZihiLnk8ZS55KWYueT1lLnktYi55O2Vsc2UgaWYoYi55K2IuaGVpZ2h0PmUueStlLmhlaWdodClmLnk9ZS55K2UuaGVpZ2h0LShiLnkrYi5oZWlnaHQpO2QuZCgiYWRqdXN0bWVudHMueSAiKwpmLnkpO2IueD1tLngrYS5vZmZzZXRYK2YueDtiLnk9bS55K2Eub2Zmc2V0WStmLnk7eCgiYWRqdXN0ZWQgcmVzaXplUmVjdCIsYik7cmV0dXJuIGZ9ZnVuY3Rpb24gSyhhLGIpe2QuZCgiaXNSZWN0Q29udGFpbmVkIik7eCgiY29udGFpbmluZ1JlY3QiLGEpO3goImNvbnRhaW5lZFJlY3QiLGIpO3JldHVybiBiLng+PWEueCYmYi54K2Iud2lkdGg8PWEueCthLndpZHRoJiZiLnk+PWEueSYmYi55K2IuaGVpZ2h0PD1hLnkrYS5oZWlnaHR9ZnVuY3Rpb24geChhLGIpe2QuZChhKyIgWyIrYi54KyIsIitiLnkrIl0iKyIsWyIrKGIueCtiLndpZHRoKSsiLCIrKGIueStiLmhlaWdodCkrIl0iKyIgKCIrYi53aWR0aCsieCIrYi5oZWlnaHQrIikiKX1jb25zb2xlLmxvZygiTVJBSUQgb2JqZWN0IGxvYWRpbmcuLi4iKTt2YXIgeT17IkRFQlVHIjowLCJJTkZPIjoxLCJXQVJOSU5HIjoyLCJFUlJPUiI6MywiTk9ORSI6NH07dmFyIEM9eS5JTkZPO3ZhciBkPXt9O2QuZD1mdW5jdGlvbihhKXtpZihDPD0KeS5ERUJVRyljb25zb2xlLmxvZygiKEQtbXJhaWQuanMpICIrYSl9O2QuaT1mdW5jdGlvbihhKXtpZihDPD15LklORk8pY29uc29sZS5sb2coIihJLW1yYWlkLmpzKSAiK2EpfTtkLnc9ZnVuY3Rpb24oYSl7aWYoQzw9eS5XQVJOSU5HKWNvbnNvbGUubG9nKCIoVy1tcmFpZC5qcykgIithKX07ZC5lPWZ1bmN0aW9uKGEpe2lmKEM8PXkuRVJST1IpY29uc29sZS5sb2coIihFLW1yYWlkLmpzKSAiK2EpfTt2YXIgYz13aW5kb3cubXJhaWQ9e2lzTmF0aXZlU2RrUmVhZHk6ZmFsc2UsbmF0aXZlQ2FsbFF1ZXVlOltdLG5hdGl2ZUNhbGxSdW5uaW5nOmZhbHNlfTt2YXIgUT0iMi4wIjt2YXIgdD1jLlNUQVRFUz17IkxPQURJTkciOiJsb2FkaW5nIiwiREVGQVVMVCI6ImRlZmF1bHQiLCJFWFBBTkRFRCI6ImV4cGFuZGVkIiwiUkVTSVpFRCI6InJlc2l6ZWQiLCJISURERU4iOiJoaWRkZW4ifTt2YXIgRD1jLlBMQUNFTUVOVF9UWVBFUz17IklOTElORSI6ImlubGluZSIsIklOVEVSU1RJVElBTCI6ImludGVyc3RpdGlhbCJ9Owp2YXIgUj1jLlJFU0laRV9QUk9QRVJUSUVTX0NVU1RPTV9DTE9TRV9QT1NJVElPTj17IlRPUF9MRUZUIjoidG9wLWxlZnQiLCJUT1BfQ0VOVEVSIjoidG9wLWNlbnRlciIsIlRPUF9SSUdIVCI6InRvcC1yaWdodCIsIkNFTlRFUiI6ImNlbnRlciIsIkJPVFRPTV9MRUZUIjoiYm90dG9tLWxlZnQiLCJCT1RUT01fQ0VOVEVSIjoiYm90dG9tLWNlbnRlciIsIkJPVFRPTV9SSUdIVCI6ImJvdHRvbS1yaWdodCJ9O3ZhciBTPWMuT1JJRU5UQVRJT05fUFJPUEVSVElFU19GT1JDRV9PUklFTlRBVElPTj17IlBPUlRSQUlUIjoicG9ydHJhaXQiLCJMQU5EU0NBUEUiOiJsYW5kc2NhcGUiLCJOT05FIjoibm9uZSJ9O3ZhciBMPWMuRVZFTlRTPXsiRVJST1IiOiJlcnJvciIsIlJFQURZIjoicmVhZHkiLCJTSVpFQ0hBTkdFIjoic2l6ZUNoYW5nZSIsIlNUQVRFQ0hBTkdFIjoic3RhdGVDaGFuZ2UiLCJWSUVXQUJMRUNIQU5HRSI6InZpZXdhYmxlQ2hhbmdlIn07dmFyIFU9Yy5TVVBQT1JURURfRkVBVFVSRVM9CnsiU01TIjoic21zIiwiVEVMIjoidGVsIiwiQ0FMRU5EQVIiOiJjYWxlbmRhciIsIlNUT1JFUElDVFVSRSI6InN0b3JlUGljdHVyZSIsIklOTElORVZJREVPIjoiaW5saW5lVmlkZW8ifTt2YXIgbj10LkxPQURJTkc7dmFyIHo9RC5JTkxJTkU7dmFyIEE9e307dmFyIEU9ZmFsc2U7dmFyIE09ZmFsc2U7dmFyIEc9ZmFsc2U7dmFyIHA9eyJ3aWR0aCI6MCwiaGVpZ2h0IjowLCJ1c2VDdXN0b21DbG9zZSI6ZmFsc2UsImlzTW9kYWwiOnRydWV9O3ZhciB2PXsiYWxsb3dPcmllbnRhdGlvbkNoYW5nZSI6dHJ1ZSwiZm9yY2VPcmllbnRhdGlvbiI6Uy5OT05FfTt2YXIgaD17IndpZHRoIjowLCJoZWlnaHQiOjAsImN1c3RvbUNsb3NlUG9zaXRpb24iOlIuVE9QX1JJR0hULCJvZmZzZXRYIjowLCJvZmZzZXRZIjowLCJhbGxvd09mZnNjcmVlbiI6dHJ1ZX07dmFyIEI9eyJ4IjowLCJ5IjowLCJ3aWR0aCI6MCwiaGVpZ2h0IjowfTt2YXIgbT17IngiOjAsInkiOjAsIndpZHRoIjowLCJoZWlnaHQiOjB9Owp2YXIgcj17IndpZHRoIjowLCJoZWlnaHQiOjB9O3ZhciBIPXsid2lkdGgiOjAsImhlaWdodCI6MH07dmFyIFY9MDt2YXIgcT17fTtjLmFkZEV2ZW50TGlzdGVuZXI9ZnVuY3Rpb24oYSxiKXtkLmkoIm1yYWlkLmFkZEV2ZW50TGlzdGVuZXIgIithKyI6ICIrU3RyaW5nKGIpKTtpZighYXx8IWIpe2MuZmlyZUVycm9yRXZlbnQoIkJvdGggZXZlbnQgYW5kIGxpc3RlbmVyIGFyZSByZXF1aXJlZC4iLCJhZGRFdmVudExpc3RlbmVyIik7cmV0dXJufWlmKCFKKGEsTCkpe2MuZmlyZUVycm9yRXZlbnQoIlVua25vd24gTVJBSUQgZXZlbnQ6ICIrYSwiYWRkRXZlbnRMaXN0ZW5lciIpO3JldHVybn12YXIgZT1xW2FdPXFbYV18fFtdO2Zvcih2YXIgZj0wO2Y8ZS5sZW5ndGg7ZisrKXt2YXIgZz1TdHJpbmcoYik7dmFyIGw9U3RyaW5nKGVbZl0pO2lmKGI9PT1lW2ZdfHxnPT09bCl7ZC5pKCJsaXN0ZW5lciAiK2crIiBpcyBhbHJlYWR5IHJlZ2lzdGVyZWQgZm9yIGV2ZW50ICIrYSk7cmV0dXJufX1lLnB1c2goYil9OwpjLmNyZWF0ZUNhbGVuZGFyRXZlbnQ9ZnVuY3Rpb24oYSl7ZC5pKCJtcmFpZC5jcmVhdGVDYWxlbmRhckV2ZW50IHdpdGggIithKTtpZihBW2MuU1VQUE9SVEVEX0ZFQVRVUkVTLkNBTEVOREFSXSlrKCJjcmVhdGVDYWxlbmRhckV2ZW50P2V2ZW50SlNPTlx4M2QiK0pTT04uc3RyaW5naWZ5KGEpKTtlbHNlIGQuZSgiY3JlYXRlQ2FsZW5kYXJFdmVudCBpcyBub3Qgc3VwcG9ydGVkIil9O2MuY2xvc2U9ZnVuY3Rpb24oKXtkLmkoIm1yYWlkLmNsb3NlIik7aWYobj09PXQuTE9BRElOR3x8bj09PXQuREVGQVVMVCYmej09PUQuSU5MSU5FfHxuPT09dC5ISURERU4pcmV0dXJuO2soImNsb3NlIil9O2MuZXhwYW5kPWZ1bmN0aW9uKGEpe2lmKGE9PT11bmRlZmluZWQpZC5pKCJtcmFpZC5leHBhbmQgKDEtcGFydCkiKTtlbHNlIGQuaSgibXJhaWQuZXhwYW5kICIrYSk7aWYoeiE9PUQuSU5MSU5FfHxuIT09dC5ERUZBVUxUJiZuIT09dC5SRVNJWkVEKXJldHVybjtpZihhPT09dW5kZWZpbmVkKWsoImV4cGFuZCIpOwplbHNlIGsoImV4cGFuZD91cmxceDNkIitlbmNvZGVVUklDb21wb25lbnQoYSkpfTtjLmdldEN1cnJlbnRQb3NpdGlvbj1mdW5jdGlvbigpe2QuaSgibXJhaWQuZ2V0Q3VycmVudFBvc2l0aW9uIik7cmV0dXJuIEJ9O2MuZ2V0RGVmYXVsdFBvc2l0aW9uPWZ1bmN0aW9uKCl7ZC5pKCJtcmFpZC5nZXREZWZhdWx0UG9zaXRpb24iKTtyZXR1cm4gbX07Yy5nZXRFeHBhbmRQcm9wZXJ0aWVzPWZ1bmN0aW9uKCl7ZC5pKCJtcmFpZC5nZXRFeHBhbmRQcm9wZXJ0aWVzIik7cmV0dXJuIHB9O2MuZ2V0TWF4U2l6ZT1mdW5jdGlvbigpe2QuaSgibXJhaWQuZ2V0TWF4U2l6ZSIpO3JldHVybiByfTtjLmdldE9yaWVudGF0aW9uUHJvcGVydGllcz1mdW5jdGlvbigpe2QuaSgibXJhaWQuZ2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIik7cmV0dXJuIHZ9O2MuZ2V0UGxhY2VtZW50VHlwZT1mdW5jdGlvbigpe2QuaSgibXJhaWQuZ2V0UGxhY2VtZW50VHlwZSIpO3JldHVybiB6fTtjLmdldFJlc2l6ZVByb3BlcnRpZXM9CmZ1bmN0aW9uKCl7ZC5pKCJtcmFpZC5nZXRSZXNpemVQcm9wZXJ0aWVzIik7cmV0dXJuIGh9O2MuZ2V0U2NyZWVuU2l6ZT1mdW5jdGlvbigpe2QuaSgibXJhaWQuZ2V0U2NyZWVuU2l6ZSIpO3JldHVybiBIfTtjLmdldFN0YXRlPWZ1bmN0aW9uKCl7ZC5pKCJtcmFpZC5nZXRTdGF0ZSIpO3JldHVybiBufTtjLmdldFZlcnNpb249ZnVuY3Rpb24oKXtkLmkoIm1yYWlkLmdldFZlcnNpb24iKTtyZXR1cm4gUX07Yy5pc1ZpZXdhYmxlPWZ1bmN0aW9uKCl7ZC5pKCJtcmFpZC5pc1ZpZXdhYmxlIik7cmV0dXJuIEV9O2Mub3Blbj1mdW5jdGlvbihhKXtkLmkoIm1yYWlkLm9wZW4gIithKTtrKCJvcGVuP3VybFx4M2QiK2VuY29kZVVSSUNvbXBvbmVudChhKSl9O2MucGxheVZpZGVvPWZ1bmN0aW9uKGEpe2QuaSgibXJhaWQucGxheVZpZGVvICIrYSk7aygicGxheVZpZGVvP3VybFx4M2QiK2VuY29kZVVSSUNvbXBvbmVudChhKSl9O2MucmVtb3ZlRXZlbnRMaXN0ZW5lcj1mdW5jdGlvbihhLGIpe2QuaSgibXJhaWQucmVtb3ZlRXZlbnRMaXN0ZW5lciAiKwphKyIgOiAiK1N0cmluZyhiKSk7aWYoIWEpe2MuZmlyZUVycm9yRXZlbnQoIkV2ZW50IGlzIHJlcXVpcmVkLiIsInJlbW92ZUV2ZW50TGlzdGVuZXIiKTtyZXR1cm59aWYoIUooYSxMKSl7Yy5maXJlRXJyb3JFdmVudCgiVW5rbm93biBNUkFJRCBldmVudDogIithLCJyZW1vdmVFdmVudExpc3RlbmVyIik7cmV0dXJufWlmKHEuaGFzT3duUHJvcGVydHkoYSkpaWYoYil7dmFyIGU9cVthXTt2YXIgZj1lLmxlbmd0aDtmb3IodmFyIGc9MDtnPGY7ZysrKXt2YXIgbD1lW2ddO3ZhciB1PVN0cmluZyhiKTt2YXIgST1TdHJpbmcobCk7aWYoYj09PWx8fHU9PT1JKXtlLnNwbGljZShnLDEpO2JyZWFrfX1pZihnPT09ZilkLmkoImxpc3RlbmVyICIrdSsiIG5vdCBmb3VuZCBmb3IgZXZlbnQgIithKTtpZihlLmxlbmd0aD09PTApZGVsZXRlIHFbYV19ZWxzZSBkZWxldGUgcVthXTtlbHNlIGQuaSgibm8gbGlzdGVuZXJzIHJlZ2lzdGVyZWQgZm9yIGV2ZW50ICIrYSl9O2MucmVzaXplPWZ1bmN0aW9uKCl7ZC5pKCJtcmFpZC5yZXNpemUiKTsKaWYoej09PUQuSU5URVJTVElUSUFMfHxuPT09dC5MT0FESU5HfHxuPT09dC5ISURERU4pcmV0dXJuO2lmKG49PT10LkVYUEFOREVEKXtjLmZpcmVFcnJvckV2ZW50KCJtcmFpZC5yZXNpemUgY2FsbGVkIHdoZW4gYWQgaXMgaW4gZXhwYW5kZWQgc3RhdGUiLCJtcmFpZC5yZXNpemUiKTtyZXR1cm59aWYoIUcpe2MuZmlyZUVycm9yRXZlbnQoIm1yYWlkLnJlc2l6ZSBpcyBub3QgcmVhZHkgdG8gYmUgY2FsbGVkIiwibXJhaWQucmVzaXplIik7cmV0dXJufXZhciBhPSJ3aWR0aFx4M2QiK2gud2lkdGgrIlx4MjZoZWlnaHRceDNkIitoLmhlaWdodCsiXHgyNm9mZnNldFhceDNkIisoaC5vZmZzZXRYK2FkanVzdG1lbnRzLngpKyJceDI2b2Zmc2V0WVx4M2QiKyhoLm9mZnNldFkrYWRqdXN0bWVudHMueSkrIlx4MjZjdXN0b21DbG9zZVBvc2l0aW9uXHgzZCIraC5jdXN0b21DbG9zZVBvc2l0aW9uKyJceDI2YWxsb3dPZmZzY3JlZW5ceDNkIitoLmFsbG93T2Zmc2NyZWVuO2soInJlc2l6ZT8iKwphKX07Yy5zZXRFeHBhbmRQcm9wZXJ0aWVzPWZ1bmN0aW9uKGEpe2QuaSgibXJhaWQuc2V0RXhwYW5kUHJvcGVydGllcyIpO2lmKCFGKGEsInNldEV4cGFuZFByb3BlcnRpZXMiKSl7ZC5lKCJmYWlsZWQgdmFsaWRhdGlvbiIpO3JldHVybn12YXIgYj1wLnVzZUN1c3RvbUNsb3NlO3ZhciBlPVsid2lkdGgiLCJoZWlnaHQiLCJ1c2VDdXN0b21DbG9zZSJdO2Zvcih2YXIgZj0wO2Y8ZS5sZW5ndGg7ZisrKXt2YXIgZz1lW2ZdO2lmKGEuaGFzT3duUHJvcGVydHkoZykpcFtnXT1hW2ddfWlmKHAudXNlQ3VzdG9tQ2xvc2UhPT1iKWsoInVzZUN1c3RvbUNsb3NlP3VzZUN1c3RvbUNsb3NlXHgzZCIrcC51c2VDdXN0b21DbG9zZSk7TT10cnVlfTtjLnNldE9yaWVudGF0aW9uUHJvcGVydGllcz1mdW5jdGlvbihhKXtkLmkoIm1yYWlkLnNldE9yaWVudGF0aW9uUHJvcGVydGllcyIpO2lmKCFGKGEsInNldE9yaWVudGF0aW9uUHJvcGVydGllcyIpKXtkLmUoImZhaWxlZCB2YWxpZGF0aW9uIik7cmV0dXJufXZhciBiPQp7fTtiLmFsbG93T3JpZW50YXRpb25DaGFuZ2U9di5hbGxvd09yaWVudGF0aW9uQ2hhbmdlLGIuZm9yY2VPcmllbnRhdGlvbj12LmZvcmNlT3JpZW50YXRpb247dmFyIGU9WyJhbGxvd09yaWVudGF0aW9uQ2hhbmdlIiwiZm9yY2VPcmllbnRhdGlvbiJdO2Zvcih2YXIgZj0wO2Y8ZS5sZW5ndGg7ZisrKXt2YXIgZz1lW2ZdO2lmKGEuaGFzT3duUHJvcGVydHkoZykpYltnXT1hW2ddfWlmKGIuYWxsb3dPcmllbnRhdGlvbkNoYW5nZSYmYi5mb3JjZU9yaWVudGF0aW9uIT09Yy5PUklFTlRBVElPTl9QUk9QRVJUSUVTX0ZPUkNFX09SSUVOVEFUSU9OLk5PTkUpe2MuZmlyZUVycm9yRXZlbnQoImFsbG93T3JpZW50YXRpb25DaGFuZ2UgaXMgdHJ1ZSBidXQgZm9yY2VPcmllbnRhdGlvbiBpcyAiK2IuZm9yY2VPcmllbnRhdGlvbiwic2V0T3JpZW50YXRpb25Qcm9wZXJ0aWVzIik7cmV0dXJufXYuYWxsb3dPcmllbnRhdGlvbkNoYW5nZT1iLmFsbG93T3JpZW50YXRpb25DaGFuZ2U7di5mb3JjZU9yaWVudGF0aW9uPQpiLmZvcmNlT3JpZW50YXRpb247dmFyIGw9ImFsbG93T3JpZW50YXRpb25DaGFuZ2VceDNkIit2LmFsbG93T3JpZW50YXRpb25DaGFuZ2UrIlx4MjZmb3JjZU9yaWVudGF0aW9uXHgzZCIrdi5mb3JjZU9yaWVudGF0aW9uO2soInNldE9yaWVudGF0aW9uUHJvcGVydGllcz8iK2wpfTtjLnNldFJlc2l6ZVByb3BlcnRpZXM9ZnVuY3Rpb24oYSl7ZC5pKCJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7Rz1mYWxzZTt2YXIgYj1bIndpZHRoIiwiaGVpZ2h0Iiwib2Zmc2V0WCIsIm9mZnNldFkiXTtmb3IodmFyIGU9MDtlPGIubGVuZ3RoO2UrKyl7dmFyIGY9YltlXTtpZighYS5oYXNPd25Qcm9wZXJ0eShmKSl7Yy5maXJlRXJyb3JFdmVudCgicmVxdWlyZWQgcHJvcGVydHkgIitmKyIgaXMgbWlzc2luZyIsIm1yYWlkLnNldFJlc2l6ZVByb3BlcnRpZXMiKTtyZXR1cm59fWlmKCFGKGEsInNldFJlc2l6ZVByb3BlcnRpZXMiKSl7Yy5maXJlRXJyb3JFdmVudCgiZmFpbGVkIHZhbGlkYXRpb24iLAoibXJhaWQuc2V0UmVzaXplUHJvcGVydGllcyIpO3JldHVybn12YXIgZz17IngiOjAsInkiOjB9O3ZhciBsPWEuaGFzT3duUHJvcGVydHkoImFsbG93T2Zmc2NyZWVuIik/YS5hbGxvd09mZnNjcmVlbjpoLmFsbG93T2Zmc2NyZWVuO2lmKCFsKXtpZihhLndpZHRoPnIud2lkdGh8fGEuaGVpZ2h0PnIuaGVpZ2h0KXtjLmZpcmVFcnJvckV2ZW50KCJyZXNpemUgd2lkdGggb3IgaGVpZ2h0IGlzIGdyZWF0ZXIgdGhhbiB0aGUgbWF4U2l6ZSB3aWR0aCBvciBoZWlnaHQiLCJtcmFpZC5zZXRSZXNpemVQcm9wZXJ0aWVzIik7cmV0dXJufWc9UChhKX1lbHNlIGlmKCFPKGEpKXtjLmZpcmVFcnJvckV2ZW50KCJjbG9zZSBldmVudCByZWdpb24gd2lsbCBub3QgYXBwZWFyIGVudGlyZWx5IG9uc2NyZWVuIiwibXJhaWQuc2V0UmVzaXplUHJvcGVydGllcyIpO3JldHVybn12YXIgdT1bIndpZHRoIiwiaGVpZ2h0Iiwib2Zmc2V0WCIsIm9mZnNldFkiLCJjdXN0b21DbG9zZVBvc2l0aW9uIiwiYWxsb3dPZmZzY3JlZW4iXTsKZm9yKGU9MDtlPHUubGVuZ3RoO2UrKyl7Zj11W2VdO2lmKGEuaGFzT3duUHJvcGVydHkoZikpaFtmXT1hW2ZdfXZhciBJPSJ3aWR0aFx4M2QiK2gud2lkdGgrIlx4MjZoZWlnaHRceDNkIitoLmhlaWdodCsiXHgyNm9mZnNldFhceDNkIisoaC5vZmZzZXRYK2cueCkrIlx4MjZvZmZzZXRZXHgzZCIrKGgub2Zmc2V0WStnLnkpKyJceDI2Y3VzdG9tQ2xvc2VQb3NpdGlvblx4M2QiK2guY3VzdG9tQ2xvc2VQb3NpdGlvbisiXHgyNmFsbG93T2Zmc2NyZWVuXHgzZCIraC5hbGxvd09mZnNjcmVlbjtrKCJzZXRSZXNpemVQcm9wZXJ0aWVzPyIrSSk7Rz10cnVlfTtjLnN0b3JlUGljdHVyZT1mdW5jdGlvbihhKXtkLmkoIm1yYWlkLnN0b3JlUGljdHVyZSAiK2EpO2lmKEFbYy5TVVBQT1JURURfRkVBVFVSRVMuU1RPUkVQSUNUVVJFXSlrKCJzdG9yZVBpY3R1cmU/dXJsXHgzZCIrZW5jb2RlVVJJQ29tcG9uZW50KGEpKTtlbHNlIGQuZSgic3RvcmVQaWN0dXJlIGlzIG5vdCBzdXBwb3J0ZWQiKX07CmMuc3VwcG9ydHM9ZnVuY3Rpb24oYSl7ZC5pKCJtcmFpZC5zdXBwb3J0cyAiK2ErIiAiK0FbYV0pO3ZhciBiPUFbYV07aWYodHlwZW9mIGI9PT0idW5kZWZpbmVkIiliPWZhbHNlO3JldHVybiBifTtjLnVzZUN1c3RvbUNsb3NlPWZ1bmN0aW9uKGEpe2QuaSgibXJhaWQudXNlQ3VzdG9tQ2xvc2UgIithKTtpZihwLnVzZUN1c3RvbUNsb3NlIT09YSl7cC51c2VDdXN0b21DbG9zZT1hO2soInVzZUN1c3RvbUNsb3NlP3VzZUN1c3RvbUNsb3NlXHgzZCIrcC51c2VDdXN0b21DbG9zZSl9fTtjLnNldEN1cnJlbnRQb3NpdGlvbj1mdW5jdGlvbihhLGIsZSxmKXtkLmkoIm1yYWlkLnNldEN1cnJlbnRQb3NpdGlvbiAiK2ErIiwiK2IrIiwiK2UrIiwiK2YpO0IueD1hO0IueT1iO0Iud2lkdGg9ZTtCLmhlaWdodD1mfTtjLnNldERlZmF1bHRQb3NpdGlvbj1mdW5jdGlvbihhLGIsZSxmKXtkLmkoIm1yYWlkLnNldERlZmF1bHRQb3NpdGlvbiAiK2ErIiwiK2IrIiwiK2UrIiwiK2YpO20ueD1hO20ueT0KYjttLndpZHRoPWU7bS5oZWlnaHQ9Zn07Yy5zZXRFeHBhbmRTaXplPWZ1bmN0aW9uKGEsYil7ZC5pKCJtcmFpZC5zZXRFeHBhbmRTaXplICIrYSsieCIrYik7cC53aWR0aD1hO3AuaGVpZ2h0PWJ9O2Muc2V0TWF4U2l6ZT1mdW5jdGlvbihhLGIpe2QuaSgibXJhaWQuc2V0TWF4U2l6ZSAiK2ErIngiK2IpO3Iud2lkdGg9YTtyLmhlaWdodD1ifTtjLnNldFBsYWNlbWVudFR5cGU9ZnVuY3Rpb24oYSl7ZC5pKCJtcmFpZC5zZXRQbGFjZW1lbnRUeXBlICIrYSk7ej1hfTtjLnNldFNjcmVlblNpemU9ZnVuY3Rpb24oYSxiKXtkLmkoIm1yYWlkLnNldFNjcmVlblNpemUgIithKyJ4IitiKTtILndpZHRoPWE7SC5oZWlnaHQ9YjtpZighTSl7cC53aWR0aD1hO3AuaGVpZ2h0PWJ9fTtjLnNldFN1cHBvcnRzPWZ1bmN0aW9uKGEsYil7ZC5pKCJtcmFpZC5zZXRTdXBwb3J0cyAiK2ErIiAiK2IpO0FbYV09Yn07Yy5maXJlRXJyb3JFdmVudD1mdW5jdGlvbihhLGIpe2QuaSgibXJhaWQuZmlyZUVycm9yRXZlbnQgIisKYSsiICIrYik7dyhjLkVWRU5UUy5FUlJPUixhLGIpfTtjLmZpcmVSZWFkeUV2ZW50PWZ1bmN0aW9uKCl7dGhpcy5pc05hdGl2ZVNka1JlYWR5PXRydWU7ZC5pKCJtcmFpZC5maXJlUmVhZHlFdmVudDogIit0aGlzLmlzTmF0aXZlU2RrUmVhZHkpO3coYy5FVkVOVFMuUkVBRFkpfTtjLmZpcmVTaXplQ2hhbmdlRXZlbnQ9ZnVuY3Rpb24oYSxiKXtkLmkoIm1yYWlkLmZpcmVTaXplQ2hhbmdlRXZlbnQgIithKyJ4IitiKTtpZihuIT09Yy5TVEFURVMuTE9BRElORyl3KGMuRVZFTlRTLlNJWkVDSEFOR0UsYSxiKX07Yy5maXJlU3RhdGVDaGFuZ2VFdmVudD1mdW5jdGlvbihhKXtkLmkoIm1yYWlkLmZpcmVTdGF0ZUNoYW5nZUV2ZW50ICIrYSk7aWYobiE9PWEpe249YTt3KGMuRVZFTlRTLlNUQVRFQ0hBTkdFLG4pfX07Yy5maXJlVmlld2FibGVDaGFuZ2VFdmVudD1mdW5jdGlvbihhKXtkLmkoIm1yYWlkLmZpcmVWaWV3YWJsZUNoYW5nZUV2ZW50ICIrYSk7aWYoRSE9PWEpe0U9YTt3KGMuRVZFTlRTLlZJRVdBQkxFQ0hBTkdFLApFKX19O2MuYWRMb2FkZWQ9ZmFsc2U7dmFyIFQ9IiUlVkVSU0lPTiUlIjtjLm5vRmlsbD1mdW5jdGlvbigpe2lmKCFjLmFkTG9hZGVkKXtkLmkoIm1yYWlkLm5vRmlsbCIpO2soIm5vRmlsbCIpfX07Yy5sb2FkZWQ9ZnVuY3Rpb24oKXtkLmkoIm1yYWlkLmxvYWRlZCIpO2MuYWRMb2FkZWQ9dHJ1ZTtrKCJsb2FkZWQiKX07Yy5nZXRBcHBvZGVhbFZlcnNpb249ZnVuY3Rpb24oKXtkLmkoIm1yYWlkLmdldEFwcG9kZWFsVmVyc2lvbiIpO3JldHVybiBUfTtjLm5hdGl2ZUNhbGxDb21wbGV0ZT1mdW5jdGlvbigpe2QuaSgibXJhaWQubmF0aXZlQ2FsbENvbXBsZXRlIik7aWYodGhpcy5uYXRpdmVDYWxsUXVldWUubGVuZ3RoPT09MCl7dGhpcy5uYXRpdmVDYWxsUnVubmluZz1mYWxzZTtyZXR1cm59dmFyIGE9dGhpcy5uYXRpdmVDYWxsUXVldWUucG9wKCk7d2luZG93LmxvY2F0aW9uPWF9O3ZhciBOPXsic2V0RXhwYW5kUHJvcGVydGllcyI6eyJ3aWR0aCI6ZnVuY3Rpb24oYSl7cmV0dXJuIWlzTmFOKGEpfSwKImhlaWdodCI6ZnVuY3Rpb24oYSl7cmV0dXJuIWlzTmFOKGEpfSwidXNlQ3VzdG9tQ2xvc2UiOmZ1bmN0aW9uKGEpe3JldHVybiB0eXBlb2YgYT09PSJib29sZWFuIn19LCJzZXRPcmllbnRhdGlvblByb3BlcnRpZXMiOnsiYWxsb3dPcmllbnRhdGlvbkNoYW5nZSI6ZnVuY3Rpb24oYSl7cmV0dXJuIHR5cGVvZiBhPT09ImJvb2xlYW4ifSwiZm9yY2VPcmllbnRhdGlvbiI6ZnVuY3Rpb24oYSl7dmFyIGI9WyJwb3J0cmFpdCIsImxhbmRzY2FwZSIsIm5vbmUiXTtyZXR1cm4gdHlwZW9mIGE9PT0ic3RyaW5nIiYmYi5pbmRleE9mKGEpIT09LTF9fSwic2V0UmVzaXplUHJvcGVydGllcyI6eyJ3aWR0aCI6ZnVuY3Rpb24oYSl7cmV0dXJuIWlzTmFOKGEpJiY1MDw9YX0sImhlaWdodCI6ZnVuY3Rpb24oYSl7cmV0dXJuIWlzTmFOKGEpJiY1MDw9YX0sIm9mZnNldFgiOmZ1bmN0aW9uKGEpe3JldHVybiFpc05hTihhKX0sIm9mZnNldFkiOmZ1bmN0aW9uKGEpe3JldHVybiFpc05hTihhKX0sImN1c3RvbUNsb3NlUG9zaXRpb24iOmZ1bmN0aW9uKGEpe3ZhciBiPQpbInRvcC1sZWZ0IiwidG9wLWNlbnRlciIsInRvcC1yaWdodCIsImNlbnRlciIsImJvdHRvbS1sZWZ0IiwiYm90dG9tLWNlbnRlciIsImJvdHRvbS1yaWdodCJdO3JldHVybiB0eXBlb2YgYT09PSJzdHJpbmciJiZiLmluZGV4T2YoYSkhPT0tMX0sImFsbG93T2Zmc2NyZWVuIjpmdW5jdGlvbihhKXtyZXR1cm4gdHlwZW9mIGE9PT0iYm9vbGVhbiJ9fX07Yy5kdW1wTGlzdGVuZXJzPWZ1bmN0aW9uKCl7dmFyIGE9T2JqZWN0LmtleXMocSkubGVuZ3RoO2QuaSgiZHVtcGluZyBsaXN0ZW5lcnMgKCIrYSsiIGV2ZW50cykiKTtmb3IodmFyIGIgaW4gcSl7dmFyIGU9cVtiXTtkLmkoIiAgIitiKyIgY29udGFpbnMgIitlLmxlbmd0aCsiIGxpc3RlbmVycyIpO2Zvcih2YXIgZj0wO2Y8ZS5sZW5ndGg7ZisrKWQuaSgiICAgICIrZVtmXSl9fTtjLm9wZW5Qcml2YWN5U2hlZXQ9ZnVuY3Rpb24oYSl7ZC5pKCJtcmFpZC5vcGVuUHJpdmFjeVNoZWV0ICIrYSk7aygib3BlblByaXZhY3lTaGVldD9kYXRhXHgzZCIrCmEpfTtjb25zb2xlLmxvZygiTVJBSUQgb2JqZWN0IGxvYWRlZCIpfSkoKTs="

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 24
    .line 25
    .line 26
    const-string v1, "%%VERSION%%"

    .line 27
    .line 28
    const-string v2, ""

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lio/bidmachine/iab/mraid/o;->f:Ljava/lang/String;

    .line 35
    .line 36
    :cond_1
    sget-object v0, Lio/bidmachine/iab/mraid/o;->f:Ljava/lang/String;

    .line 37
    .line 38
    return-object v0
.end method

.method private static i(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/o;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/bidmachine/iab/mraid/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-le p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method private static k(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "useCustomClose"

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, -0x1

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    sparse-switch v4, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v3, 0x7

    .line 26
    goto :goto_0

    .line 27
    :sswitch_1
    const-string v4, "setResizeProperties"

    .line 28
    .line 29
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x6

    .line 37
    goto :goto_0

    .line 38
    :sswitch_2
    const-string v4, "storePicture"

    .line 39
    .line 40
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v3, 0x5

    .line 48
    goto :goto_0

    .line 49
    :sswitch_3
    const-string v4, "setOrientationProperties"

    .line 50
    .line 51
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v3, 0x4

    .line 59
    goto :goto_0

    .line 60
    :sswitch_4
    const-string v4, "open"

    .line 61
    .line 62
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    const/4 v3, 0x3

    .line 70
    goto :goto_0

    .line 71
    :sswitch_5
    const-string v4, "createCalendarEvent"

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const/4 v3, 0x2

    .line 81
    goto :goto_0

    .line 82
    :sswitch_6
    const-string v4, "openPrivacySheet"

    .line 83
    .line 84
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_6

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    move v3, v2

    .line 92
    goto :goto_0

    .line 93
    :sswitch_7
    const-string v4, "playVideo"

    .line 94
    .line 95
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-nez p0, :cond_7

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    move v3, v1

    .line 103
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 104
    .line 105
    .line 106
    return v2

    .line 107
    :pswitch_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p0

    .line 111
    return p0

    .line 112
    :pswitch_1
    const-string p0, "width"

    .line 113
    .line 114
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_8

    .line 119
    .line 120
    const-string p0, "height"

    .line 121
    .line 122
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_8

    .line 127
    .line 128
    const-string p0, "offsetX"

    .line 129
    .line 130
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_8

    .line 135
    .line 136
    const-string p0, "offsetY"

    .line 137
    .line 138
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    if-eqz p0, :cond_8

    .line 143
    .line 144
    const-string p0, "customClosePosition"

    .line 145
    .line 146
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    if-eqz p0, :cond_8

    .line 151
    .line 152
    const-string p0, "allowOffscreen"

    .line 153
    .line 154
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    if-eqz p0, :cond_8

    .line 159
    .line 160
    move v1, v2

    .line 161
    :cond_8
    return v1

    .line 162
    :pswitch_2
    const-string p0, "allowOrientationChange"

    .line 163
    .line 164
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    if-eqz p0, :cond_9

    .line 169
    .line 170
    const-string p0, "forceOrientation"

    .line 171
    .line 172
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-eqz p0, :cond_9

    .line 177
    .line 178
    move v1, v2

    .line 179
    :cond_9
    return v1

    .line 180
    :pswitch_3
    const-string p0, "eventJSON"

    .line 181
    .line 182
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    return p0

    .line 187
    :pswitch_4
    const-string p0, "data"

    .line 188
    .line 189
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    return p0

    .line 194
    :pswitch_5
    const-string p0, "url"

    .line 195
    .line 196
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    return p0

    .line 201
    :sswitch_data_0
    .sparse-switch
        -0x706c8659 -> :sswitch_7
        -0x655765df -> :sswitch_6
        -0x2bba19a0 -> :sswitch_5
        0x34264a -> :sswitch_4
        0x7f3dfe1 -> :sswitch_3
        0x1b5f6cdd -> :sswitch_2
        0x253cb189 -> :sswitch_1
        0x6037d900 -> :sswitch_0
    .end sparse-switch

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    check-cast p0, Landroid/app/Activity;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const v0, 0x1020002

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static m(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    const v0, 0x1020002

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    move-object p0, v0

    .line 22
    :cond_2
    return-object p0
.end method

.method public static n(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lio/bidmachine/iab/mraid/o;->l(Landroid/content/Context;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Lio/bidmachine/iab/mraid/o;->m(Landroid/view/View;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p0, p1

    .line 13
    :goto_0
    return-object p0
.end method

.method public static o(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/iab/mraid/o;->n(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object p1, p0

    .line 10
    check-cast p1, Landroid/view/ViewGroup;

    .line 11
    .line 12
    :cond_0
    return-object p1
.end method

.method public static p(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/o;->d:Lio/bidmachine/iab/mraid/g;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lio/bidmachine/iab/mraid/o;->q(Ljava/lang/String;Lio/bidmachine/iab/mraid/g;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static q(Ljava/lang/String;Lio/bidmachine/iab/mraid/g;)Ljava/util/Map;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/iab/mraid/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/iab/mraid/g;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "parseCommandUrl"

    .line 5
    .line 6
    invoke-static {v2, p0, v1}, Lio/bidmachine/iab/mraid/h;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p0}, Lio/bidmachine/iab/mraid/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    const/16 v3, 0x3f

    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const/4 v4, -0x1

    .line 25
    if-eq v3, v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v3, "&"

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    array-length v3, v1

    .line 44
    move v5, v0

    .line 45
    :goto_0
    if-ge v5, v3, :cond_0

    .line 46
    .line 47
    aget-object v6, v1, v5

    .line 48
    .line 49
    const/16 v7, 0x3d

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    add-int/lit8 v7, v7, 0x1

    .line 60
    .line 61
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-interface {v2, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move-object v1, v4

    .line 72
    :cond_1
    invoke-interface {p1, v1}, Lio/bidmachine/iab/mraid/g;->c(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/4 v3, 0x0

    .line 77
    const-string v4, "command"

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string p1, "%s is unknown"

    .line 86
    .line 87
    invoke-static {v4, p1, p0}, Lio/bidmachine/iab/mraid/h;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :cond_2
    invoke-interface {p1, v1, v2}, Lio/bidmachine/iab/mraid/g;->a(Ljava/lang/String;Ljava/util/Map;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "URL %s is missing parameters"

    .line 102
    .line 103
    invoke-static {v4, p1, p0}, Lio/bidmachine/iab/mraid/h;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    return-object v3

    .line 107
    :cond_3
    new-instance p0, Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    invoke-interface {p0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    .line 117
    .line 118
    return-object p0
.end method

.method public static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/bidmachine/iab/mraid/o;->c:[C

    .line 7
    .line 8
    invoke-static {p0, v1}, Lio/bidmachine/iab/mraid/o;->c(Ljava/lang/String;[C)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "html"

    .line 13
    .line 14
    invoke-static {p0, v2, v1}, Lio/bidmachine/iab/mraid/o;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v3, "head"

    .line 19
    .line 20
    invoke-static {p0, v3, v1}, Lio/bidmachine/iab/mraid/o;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    const-string v4, "body"

    .line 25
    .line 26
    invoke-static {p0, v4, v1}, Lio/bidmachine/iab/mraid/o;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    :cond_0
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    :cond_1
    return-object p0

    .line 41
    :cond_2
    const/4 p0, 0x0

    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    const-string v1, "<html><head></head><body><div align=\"center\">"

    .line 45
    .line 46
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    const-string p0, "</div></body></html>"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    if-nez v3, :cond_4

    .line 56
    .line 57
    const-string v1, "<html[^>]*>"

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/regex/Matcher;->find(I)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    const-string v2, "<head></head>"

    .line 79
    .line 80
    invoke-virtual {v0, p0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    :goto_1
    invoke-static {v0}, Lio/bidmachine/iab/mraid/o;->d(Ljava/lang/StringBuffer;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method
