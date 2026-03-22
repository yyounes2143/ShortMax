.class public final Lcom/inmobi/media/ha;
.super Lcom/inmobi/media/U8;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    .line 1
    const-string v0, "vendorKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "eventType"

    .line 12
    .line 13
    const-string v1, "OMID_VIEWABILITY"

    .line 14
    .line 15
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p3, v0, v1, p4}, Lcom/inmobi/media/U8;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/inmobi/media/ha;->h:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/inmobi/media/ha;->g:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
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
    iget-object v1, p0, Lcom/inmobi/media/ha;->h:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const-string v1, "vendorKey"

    .line 43
    .line 44
    iget-object v2, p0, Lcom/inmobi/media/ha;->h:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/ha;->g:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    const-string v1, "verificationParams"

    .line 61
    .line 62
    iget-object v2, p0, Lcom/inmobi/media/ha;->g:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/U8;->c:Ljava/util/Map;

    .line 68
    .line 69
    const-string v2, "extras"

    .line 70
    .line 71
    sget-boolean v3, Lcom/inmobi/media/T9;->a:Z

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    new-instance v1, Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    :cond_2
    const-string v3, ","

    .line 81
    .line 82
    invoke-static {v3, v1}, Lcom/inmobi/media/T9;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "toString(...)"

    .line 94
    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :goto_1
    const-string v1, "ha"

    .line 100
    .line 101
    const-string v2, "TAG"

    .line 102
    .line 103
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 107
    .line 108
    new-instance v1, Lcom/inmobi/media/f2;

    .line 109
    .line 110
    invoke-direct {v1, v0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 111
    .line 112
    .line 113
    const-string v0, "event"

    .line 114
    .line 115
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 121
    .line 122
    .line 123
    const-string v0, ""

    .line 124
    .line 125
    return-object v0
.end method
