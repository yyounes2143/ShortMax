.class final Lio/bidmachine/analytics/internal/n$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/n;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/n$a;Lio/bidmachine/analytics/internal/n$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/analytics/internal/n;


# direct methods
.method constructor <init>(Lio/bidmachine/analytics/internal/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/n$c;->a:Lio/bidmachine/analytics/internal/n;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n$c;->a:Lio/bidmachine/analytics/internal/n;

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "ver"

    .line 13
    .line 14
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    new-instance v2, Lorg/json/JSONArray;

    .line 18
    .line 19
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n;->c()Lio/bidmachine/analytics/internal/n$a;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/n$a;->a()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    const-string v3, "iaa"

    .line 31
    .line 32
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    new-instance v2, Lorg/json/JSONArray;

    .line 36
    .line 37
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n;->c()Lio/bidmachine/analytics/internal/n$a;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/n$a;->c()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 46
    .line 47
    .line 48
    const-string v3, "iah"

    .line 49
    .line 50
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    new-instance v2, Lorg/json/JSONArray;

    .line 54
    .line 55
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n;->c()Lio/bidmachine/analytics/internal/n$a;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/n$a;->b()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    const-string v3, "iad"

    .line 67
    .line 68
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    new-instance v2, Lorg/json/JSONArray;

    .line 72
    .line 73
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n;->e()Lio/bidmachine/analytics/internal/n$a;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/n$a;->a()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    const-string v3, "sua"

    .line 85
    .line 86
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    new-instance v2, Lorg/json/JSONArray;

    .line 90
    .line 91
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n;->e()Lio/bidmachine/analytics/internal/n$a;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/n$a;->c()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 100
    .line 101
    .line 102
    const-string v3, "suh"

    .line 103
    .line 104
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    new-instance v2, Lorg/json/JSONArray;

    .line 108
    .line 109
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n;->e()Lio/bidmachine/analytics/internal/n$a;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n$a;->b()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 118
    .line 119
    .line 120
    const-string v1, "sud"

    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/n$c;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
