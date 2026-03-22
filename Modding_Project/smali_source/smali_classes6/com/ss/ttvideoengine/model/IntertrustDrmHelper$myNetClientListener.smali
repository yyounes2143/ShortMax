.class Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$myNetClientListener;
.super Ljava/lang/Object;
.source "IntertrustDrmHelper.java"

# interfaces
.implements Lcom/ss/ttvideoengine/net/TTVNetClient$RawCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "myNetClientListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$myNetClientListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 4

    .line 1
    const-string v0, "method invoke failied:"

    .line 2
    .line 3
    const-string v1, "IntertrustDrmHelper"

    .line 4
    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    iget-object p1, p2, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "get token return error code: "

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v2, p2, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", internal:"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v2, p2, Lcom/ss/ttvideoengine/utils/Error;->internalCode:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", description:"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p2, Lcom/ss/ttvideoengine/utils/Error;->description:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "Canceled"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$myNetClientListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 60
    .line 61
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->access$400(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    return-void

    .line 65
    :cond_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$myNetClientListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 66
    .line 67
    invoke-static {p2}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->access$500(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-nez p2, :cond_2

    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$myNetClientListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 75
    .line 76
    invoke-static {p2}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->access$600(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-nez p2, :cond_3

    .line 81
    .line 82
    iget-object p2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$myNetClientListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 83
    .line 84
    const-string v2, "com.ss.ttm.drm.intertrust.IntertrustDrmProxy"

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {p2, v2}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->access$602(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Ljava/lang/Class;)Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    goto :goto_1

    .line 96
    :catch_1
    move-exception p1

    .line 97
    goto :goto_2

    .line 98
    :catch_2
    move-exception p1

    .line 99
    goto :goto_3

    .line 100
    :catch_3
    move-exception p1

    .line 101
    goto :goto_4

    .line 102
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$myNetClientListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 103
    .line 104
    invoke-static {p2}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->access$600(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const-string v2, "processTokenComplete"

    .line 109
    .line 110
    const-class v3, Ljava/lang/String;

    .line 111
    .line 112
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    iget-object v2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$myNetClientListener;->this$0:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 121
    .line 122
    invoke-static {v2}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->access$500(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p2, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v0, "method not found:"

    .line 186
    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v0, "class not found:"

    .line 211
    .line 212
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method
