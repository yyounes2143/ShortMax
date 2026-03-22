.class public Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteObjectsHandler"
.end annotation


# instance fields
.field private final c:Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

.field private d:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

.field private e:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->c:Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->d:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->e:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p1, "DeleteResult"

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    const-string v0, "Error"

    .line 12
    .line 13
    const-string v1, "Deleted"

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p3, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->c:Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->a()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->d:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 31
    .line 32
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->d:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_9

    .line 44
    .line 45
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->c:Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/DeleteObjectsResponse;->c()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->e:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    .line 52
    .line 53
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iput-object p3, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->e:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_1
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p0, p3}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    const-string v1, "VersionId"

    .line 69
    .line 70
    const-string v2, "Key"

    .line 71
    .line 72
    if-eqz p3, :cond_5

    .line 73
    .line 74
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->d:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->e(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->d:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->f(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_3
    const-string p1, "DeleteMarker"

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->d:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    const-string/jumbo p3, "true"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->b(Z)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_4
    const-string p1, "DeleteMarkerVersionId"

    .line 134
    .line 135
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_9

    .line 140
    .line 141
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->d:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;->d(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_5
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_9

    .line 160
    .line 161
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_6

    .line 166
    .line 167
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->e:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->b(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_7

    .line 182
    .line 183
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->e:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->d(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_7
    const-string p1, "Code"

    .line 194
    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_8

    .line 200
    .line 201
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->e:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->a(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_8
    const-string p1, "Message"

    .line 212
    .line 213
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-eqz p1, :cond_9

    .line 218
    .line 219
    iget-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->e:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->g()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;->c(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_9
    :goto_0
    return-void
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    const-string p1, "DeleteResult"

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;->l([Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const-string p1, "Deleted"

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    new-instance p1, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->d:Lcom/amazonaws/services/s3/model/DeleteObjectsResult$DeletedObject;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "Error"

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    new-instance p1, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$DeleteObjectsHandler;->e:Lcom/amazonaws/services/s3/model/MultiObjectDeleteException$DeleteError;

    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method
