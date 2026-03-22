.class Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread$1;
.super Landroid/os/Handler;
.source "DataLoaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread$1;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper$PreloadMediaThread;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    .line 6
    instance-of v1, v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    const-string v2, "[preload] obj should instance of ArrayList"

    .line 9
    .line 10
    const-string v3, "DataLoaderHelper"

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    :try_start_1
    invoke-static {v3, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_1
    check-cast v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-static {v3, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 35
    .line 36
    iget p1, p1, Landroid/os/Message;->what:I

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    const/4 v3, 0x1

    .line 40
    const/4 v4, 0x2

    .line 41
    packed-switch p1, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ne p1, v4, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$1200(Lcom/ss/ttvideoengine/DataLoaderHelper;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-ne p1, v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;

    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$1100(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/preload/PreloadModelMedia;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :pswitch_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-ne p1, v2, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getCenter()Lcom/bytedance/vcloud/strategy/StrategyCenter;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1, p1, v0}, Lcom/bytedance/vcloud/strategy/StrategyCenter;->focusMedia(Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :pswitch_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-ne p1, v2, :cond_3

    .line 125
    .line 126
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v1, :cond_3

    .line 143
    .line 144
    invoke-static {v1, p1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$1000(Lcom/ss/ttvideoengine/DataLoaderHelper;Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :pswitch_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-ne p1, v2, :cond_3

    .line 153
    .line 154
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    check-cast v0, Ljava/lang/String;

    .line 165
    .line 166
    if-eqz v1, :cond_3

    .line 167
    .line 168
    invoke-static {v1, p1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$900(Lcom/ss/ttvideoengine/DataLoaderHelper;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :pswitch_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-ne p1, v2, :cond_3

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lcom/ss/ttvideoengine/preload/PreloadModelMedia;

    .line 183
    .line 184
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    check-cast v0, Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v1, :cond_3

    .line 191
    .line 192
    invoke-static {v1, p1, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$800(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/preload/PreloadModelMedia;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :goto_0
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    :cond_3
    :goto_1
    return-void

    .line 200
    nop

    .line 201
    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
