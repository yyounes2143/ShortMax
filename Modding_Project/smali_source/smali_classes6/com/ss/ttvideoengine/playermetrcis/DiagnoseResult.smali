.class public Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;
.super Ljava/lang/Object;
.source "DiagnoseResult.java"

# interfaces
.implements Lcom/ss/ttvideoengine/playermetrcis/IMetricsInfo;


# instance fields
.field public avgValue:I

.field public maxValue:I

.field public overCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->maxValue:I

    .line 6
    .line 7
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->avgValue:I

    .line 8
    .line 9
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->overCount:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getMetricsInfo(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "pow"

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget p1, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->avgValue:I

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "avg_pow"

    .line 21
    .line 22
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget p1, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->maxValue:I

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "max_pow"

    .line 32
    .line 33
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget p1, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->overCount:I

    .line 37
    .line 38
    if-lez p1, :cond_2

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v1, "over_pow"

    .line 45
    .line 46
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v1, "mem"

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget p1, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->avgValue:I

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v1, "avg_mem"

    .line 65
    .line 66
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    iget p1, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->maxValue:I

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v1, "max_mem"

    .line 76
    .line 77
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget p1, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->overCount:I

    .line 81
    .line 82
    if-lez p1, :cond_2

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string v1, "over_mem"

    .line 89
    .line 90
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    const-string v1, "cpu"

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    iget p1, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->avgValue:I

    .line 103
    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    const-string v1, "avg_cpu"

    .line 109
    .line 110
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    iget p1, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->maxValue:I

    .line 114
    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v1, "max_cpu"

    .line 120
    .line 121
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    iget p1, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->overCount:I

    .line 125
    .line 126
    if-lez p1, :cond_2

    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string v1, "over_cpu"

    .line 133
    .line 134
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_0
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->maxValue:I

    .line 3
    .line 4
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->avgValue:I

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/playermetrcis/DiagnoseResult;->overCount:I

    .line 7
    .line 8
    return-void
.end method
