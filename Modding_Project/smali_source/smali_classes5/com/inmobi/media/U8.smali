.class public Lcom/inmobi/media/U8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public c:Ljava/util/Map;

.field public final d:Ljava/lang/String;

.field public e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 4

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "eventType"

    .line 7
    .line 8
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v2, "url_ping"

    .line 12
    .line 13
    const-string v3, "trackerType"

    .line 14
    .line 15
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput p2, p0, Lcom/inmobi/media/U8;->a:I

    .line 28
    .line 29
    iput-object p3, p0, Lcom/inmobi/media/U8;->b:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/inmobi/media/U8;->c:Ljava/util/Map;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    const/4 p3, 0x1

    .line 38
    sub-int/2addr p2, p3

    .line 39
    const/4 p4, 0x0

    .line 40
    move v0, p4

    .line 41
    move v1, v0

    .line 42
    :goto_0
    if-gt v0, p2, :cond_5

    .line 43
    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    move v2, v0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    move v2, p2

    .line 49
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/16 v3, 0x20

    .line 54
    .line 55
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-gtz v2, :cond_1

    .line 60
    .line 61
    move v2, p3

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    move v2, p4

    .line 64
    :goto_2
    if-nez v1, :cond_3

    .line 65
    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    move v1, p3

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    if-nez v2, :cond_4

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    add-int/lit8 p2, p2, -0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    :goto_3
    invoke-static {p2, p3, p1, v0}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/inmobi/media/U8;->d:Ljava/lang/String;

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "type"

    .line 7
    .line 8
    const-string v2, "url_ping"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "url"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/inmobi/media/U8;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "eventType"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/inmobi/media/U8;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "eventId"

    .line 28
    .line 29
    iget v2, p0, Lcom/inmobi/media/U8;->a:I

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v1, "extras"

    .line 35
    .line 36
    sget-boolean v2, Lcom/inmobi/media/T9;->a:Z

    .line 37
    .line 38
    iget-object v2, p0, Lcom/inmobi/media/U8;->c:Ljava/util/Map;

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    new-instance v2, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    const-string v3, ","

    .line 51
    .line 52
    invoke-static {v3, v2}, Lcom/inmobi/media/T9;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "toString(...)"

    .line 64
    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object v0

    .line 69
    :goto_1
    const-string v1, "U8"

    .line 70
    .line 71
    const-string v2, "TAG"

    .line 72
    .line 73
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 77
    .line 78
    new-instance v1, Lcom/inmobi/media/f2;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    const-string v0, "event"

    .line 84
    .line 85
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 91
    .line 92
    .line 93
    const-string v0, ""

    .line 94
    .line 95
    return-object v0
.end method
