.class public final Lcom/inmobi/media/X5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Y5;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/inmobi/media/X5;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/inmobi/media/Y6;

    .line 2
    .line 3
    const-string v0, "dbData"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/inmobi/media/j7;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/inmobi/media/Y6;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "fileName"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :try_start_0
    sget-object v2, Lcom/inmobi/media/j7;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/inmobi/media/Ab;

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    iget-object v3, v3, Lcom/inmobi/media/Ab;->j:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v3, v1

    .line 50
    :goto_0
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :goto_1
    sget-object v2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 58
    .line 59
    const-string v2, "event"

    .line 60
    .line 61
    invoke-static {v0, v2}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v2, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p1, Lcom/inmobi/media/Y6;->a:Ljava/lang/String;

    .line 71
    .line 72
    const-string v2, "filePath"

    .line 73
    .line 74
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v2, Ljava/io/File;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    const/4 v0, 0x1

    .line 96
    :try_start_1
    invoke-static {v2, v1, v0, v1}, Lws/f;->m(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    goto :goto_3

    .line 101
    :catch_1
    :cond_4
    :goto_2
    move-object v0, v1

    .line 102
    :goto_3
    if-eqz v0, :cond_5

    .line 103
    .line 104
    new-instance v1, Lorg/json/JSONObject;

    .line 105
    .line 106
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v0, "vitals"

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v2, "log"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    new-instance v2, Lcom/inmobi/media/Z5;

    .line 122
    .line 123
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v2, v0, v1, p1}, Lcom/inmobi/media/Z5;-><init>(Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/inmobi/media/Y6;)V

    .line 130
    .line 131
    .line 132
    move-object v1, v2

    .line 133
    :cond_5
    if-eqz v1, :cond_6

    .line 134
    .line 135
    iget-object p1, p0, Lcom/inmobi/media/X5;->a:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_6
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p1
.end method
