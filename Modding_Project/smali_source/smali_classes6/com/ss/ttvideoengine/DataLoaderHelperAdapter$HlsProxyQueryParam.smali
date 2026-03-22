.class public Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;
.super Ljava/lang/Object;
.source "DataLoaderHelperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HlsProxyQueryParam"
.end annotation


# instance fields
.field public convertUrlOrder:Ljava/lang/String;

.field public enableInfoCallback:Z

.field public engineId:Ljava/lang/String;

.field public privateFFmpegProto:Ljava/lang/String;

.field public urlExpires:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public buildQuery()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->urlExpires:[Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "&"

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    if-lez v1, :cond_2

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->urlExpires:[Ljava/lang/String;

    .line 22
    .line 23
    array-length v4, v4

    .line 24
    move v5, v2

    .line 25
    :goto_0
    if-ge v5, v4, :cond_1

    .line 26
    .line 27
    iget-object v6, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->urlExpires:[Ljava/lang/String;

    .line 28
    .line 29
    aget-object v6, v6, v5

    .line 30
    .line 31
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v6, v4, -0x1

    .line 35
    .line 36
    if-eq v5, v6, :cond_0

    .line 37
    .line 38
    const-string v6, ","

    .line 39
    .line 40
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v4, "expireTime="

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->engineId:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    const-string v1, "id="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->engineId:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->enableInfoCallback:Z

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    const-string v1, "enableInfoCallback="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, "1"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->privateFFmpegProto:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    const-string v1, "privateFFmpegProto="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->privateFFmpegProto:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    :cond_5
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->convertUrlOrder:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_6

    .line 123
    .line 124
    const-string v1, "convertUrlOrder="

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$HlsProxyQueryParam;->convertUrlOrder:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-nez v1, :cond_7

    .line 142
    .line 143
    const-string v0, ""

    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    add-int/lit8 v1, v1, -0x1

    .line 151
    .line 152
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    return-object v0
.end method
