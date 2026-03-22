.class public Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;
.super Ljava/lang/Object;
.source "VideoEventBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/VideoEventBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MDLTrackInfo"
.end annotation


# instance fields
.field public mdl_blocked_ips:Ljava/lang/String;

.field public mdl_cache_type:I

.field public mdl_cdn_cache:Ljava/lang/String;

.field public mdl_cdn_type:I

.field public mdl_client_info:Ljava/lang/String;

.field public mdl_cur_cache_pos:J

.field public mdl_cur_end_pos:J

.field public mdl_cur_host:Ljava/lang/String;

.field public mdl_cur_ip:Ljava/lang/String;

.field public mdl_cur_req_pos:J

.field public mdl_cur_soure:I

.field public mdl_cur_url:Ljava/lang/String;

.field public mdl_disable_seek:I

.field public mdl_disk_buffer_len:J

.field public mdl_dns_t:J

.field public mdl_down_pos:J

.field public mdl_downloading:I

.field public mdl_end_t:J

.field public mdl_error_code:I

.field public mdl_extra_info:Ljava/lang/String;

.field public mdl_file_key:Ljava/lang/String;

.field public mdl_fs:J

.field public mdl_http_code:I

.field public mdl_http_open_end_t:J

.field public mdl_httpfb:J

.field public mdl_ip_list:Ljava/lang/String;

.field public mdl_is_socrf:I

.field public mdl_last_ip_list:Ljava/lang/String;

.field public mdl_last_msg:Ljava/lang/String;

.field public mdl_last_read_time:J

.field public mdl_last_req_offset:J

.field public mdl_lbs:J

.field public mdl_mem_buffer_len:I

.field public mdl_pcdn_full_speed:I

.field public mdl_player_wait_num:I

.field public mdl_player_wait_time:J

.field public mdl_re_url:Ljava/lang/String;

.field public mdl_read_src:I

.field public mdl_reply_size:J

.field public mdl_req_num:I

.field public mdl_req_t:J

.field public mdl_res_err:I

.field public mdl_seek_num:I

.field public mdl_send_offset:J

.field public mdl_server_timing:Ljava/lang/String;

.field public mdl_speed:I

.field public mdl_stage:I

.field public mdl_tbs:J

.field public mdl_tcp_end_t:J

.field public mdl_tcp_start_t:J

.field public mdl_ttfp:J

.field public mdl_url_index:I

.field public mdl_v_lt:I

.field public mdl_v_p2p_ier:I

.field final synthetic this$0:Lcom/ss/ttvideoengine/log/VideoEventBase;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->this$0:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/32 v0, -0x80000000

    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_req_pos:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_end_pos:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_cache_pos:J

    .line 14
    .line 15
    const/high16 p1, -0x80000000

    .line 16
    .line 17
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_host:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_url:Ljava/lang/String;

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_reply_size:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_down_pos:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_time:J

    .line 32
    .line 33
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_num:I

    .line 34
    .line 35
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_stage:I

    .line 36
    .line 37
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_error_code:I

    .line 38
    .line 39
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_speed:I

    .line 40
    .line 41
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_file_key:Ljava/lang/String;

    .line 42
    .line 43
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_is_socrf:I

    .line 44
    .line 45
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_url_index:I

    .line 46
    .line 47
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_re_url:Ljava/lang/String;

    .line 48
    .line 49
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_soure:I

    .line 50
    .line 51
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_extra_info:Ljava/lang/String;

    .line 52
    .line 53
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_code:I

    .line 54
    .line 55
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_t:J

    .line 56
    .line 57
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_end_t:J

    .line 58
    .line 59
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_dns_t:J

    .line 60
    .line 61
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_start_t:J

    .line 62
    .line 63
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_end_t:J

    .line 64
    .line 65
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ttfp:J

    .line 66
    .line 67
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_httpfb:J

    .line 68
    .line 69
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_open_end_t:J

    .line 70
    .line 71
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_fs:J

    .line 72
    .line 73
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_pcdn_full_speed:I

    .line 74
    .line 75
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tbs:J

    .line 76
    .line 77
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_lbs:J

    .line 78
    .line 79
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_res_err:I

    .line 80
    .line 81
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_read_src:I

    .line 82
    .line 83
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_seek_num:I

    .line 84
    .line 85
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_msg:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_server_timing:Ljava/lang/String;

    .line 88
    .line 89
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_v_lt:I

    .line 90
    .line 91
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_v_p2p_ier:I

    .line 92
    .line 93
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ip_list:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_blocked_ips:Ljava/lang/String;

    .line 96
    .line 97
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_num:I

    .line 98
    .line 99
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_cache:Ljava/lang/String;

    .line 100
    .line 101
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_client_info:Ljava/lang/String;

    .line 102
    .line 103
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_disable_seek:I

    .line 104
    .line 105
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_mem_buffer_len:I

    .line 106
    .line 107
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_disk_buffer_len:J

    .line 108
    .line 109
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_send_offset:J

    .line 110
    .line 111
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_req_offset:J

    .line 112
    .line 113
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_type:I

    .line 114
    .line 115
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_read_time:J

    .line 116
    .line 117
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_ip_list:Ljava/lang/String;

    .line 118
    .line 119
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_downloading:I

    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public update(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sBuryDataOptimize:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->updateOld(Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->updateNew(Lorg/json/JSONObject;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public updateNew(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_19

    .line 2
    .line 3
    const-string v0, "err_code"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_error_code:I

    .line 22
    .line 23
    :cond_0
    const-string v0, "reply_size"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_reply_size:J

    .line 42
    .line 43
    :cond_1
    const-string v0, "cur_host"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_host:Ljava/lang/String;

    .line 60
    .line 61
    :cond_2
    const-string v0, "cur_ip"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    .line 78
    .line 79
    :cond_3
    const-string/jumbo v0, "speed"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_4

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/Number;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_speed:I

    .line 99
    .line 100
    :cond_4
    const-string v0, "cdn_type"

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_5

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ljava/lang/Number;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_type:I

    .line 119
    .line 120
    :cond_5
    const-string/jumbo v0, "url"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_url:Ljava/lang/String;

    .line 138
    .line 139
    :cond_6
    const-string v0, "file_key"

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_7

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_file_key:Ljava/lang/String;

    .line 156
    .line 157
    :cond_7
    const-string v0, "re_url"

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_8

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_re_url:Ljava/lang/String;

    .line 174
    .line 175
    :cond_8
    const-string v0, "end_t"

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_9

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Ljava/lang/Number;

    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 190
    .line 191
    .line 192
    move-result-wide v0

    .line 193
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_end_t:J

    .line 194
    .line 195
    :cond_9
    const-string v0, "dns_t"

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_a

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Ljava/lang/Number;

    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 210
    .line 211
    .line 212
    move-result-wide v0

    .line 213
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_dns_t:J

    .line 214
    .line 215
    :cond_a
    const-string/jumbo v0, "tbs"

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_b

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    check-cast v0, Ljava/lang/Number;

    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 231
    .line 232
    .line 233
    move-result-wide v0

    .line 234
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tbs:J

    .line 235
    .line 236
    :cond_b
    const-string v0, "lbs"

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-nez v1, :cond_c

    .line 243
    .line 244
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Ljava/lang/Number;

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 251
    .line 252
    .line 253
    move-result-wide v0

    .line 254
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_lbs:J

    .line 255
    .line 256
    :cond_c
    const-string/jumbo v0, "v_p2p_ier"

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_d

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    check-cast v0, Ljava/lang/Number;

    .line 270
    .line 271
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_v_p2p_ier:I

    .line 276
    .line 277
    :cond_d
    const-string v0, "ip_list"

    .line 278
    .line 279
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-nez v1, :cond_e

    .line 284
    .line 285
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ip_list:Ljava/lang/String;

    .line 294
    .line 295
    :cond_e
    const-string v0, "blocked_ip"

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-nez v1, :cond_f

    .line 302
    .line 303
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_blocked_ips:Ljava/lang/String;

    .line 312
    .line 313
    :cond_f
    const-string v0, "cdn_cache"

    .line 314
    .line 315
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-nez v1, :cond_10

    .line 320
    .line 321
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_cache:Ljava/lang/String;

    .line 330
    .line 331
    :cond_10
    const-string v0, "client_info"

    .line 332
    .line 333
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-nez v1, :cond_11

    .line 338
    .line 339
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_client_info:Ljava/lang/String;

    .line 348
    .line 349
    :cond_11
    const-string v0, "disable_seek"

    .line 350
    .line 351
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-nez v1, :cond_12

    .line 356
    .line 357
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Ljava/lang/Number;

    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_disable_seek:I

    .line 368
    .line 369
    :cond_12
    const-string v0, "mem_buffer_len"

    .line 370
    .line 371
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-nez v1, :cond_13

    .line 376
    .line 377
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    check-cast v0, Ljava/lang/Number;

    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_mem_buffer_len:I

    .line 388
    .line 389
    :cond_13
    const-string v0, "disk_buffer_len"

    .line 390
    .line 391
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 392
    .line 393
    .line 394
    move-result v1

    .line 395
    if-nez v1, :cond_14

    .line 396
    .line 397
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Ljava/lang/Number;

    .line 402
    .line 403
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 404
    .line 405
    .line 406
    move-result-wide v0

    .line 407
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_disk_buffer_len:J

    .line 408
    .line 409
    :cond_14
    const-string v0, "send_offset"

    .line 410
    .line 411
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-nez v1, :cond_15

    .line 416
    .line 417
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    check-cast v0, Ljava/lang/Number;

    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 424
    .line 425
    .line 426
    move-result-wide v0

    .line 427
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_send_offset:J

    .line 428
    .line 429
    :cond_15
    const-string v0, "last_req_offset"

    .line 430
    .line 431
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-nez v0, :cond_16

    .line 436
    .line 437
    const-string v0, "last_req_offset"

    .line 438
    .line 439
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Ljava/lang/Number;

    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 446
    .line 447
    .line 448
    move-result-wide v0

    .line 449
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_req_offset:J

    .line 450
    .line 451
    :cond_16
    const-string v0, "last_ip_list"

    .line 452
    .line 453
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-nez v0, :cond_17

    .line 458
    .line 459
    const-string v0, "last_ip_list"

    .line 460
    .line 461
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_ip_list:Ljava/lang/String;

    .line 470
    .line 471
    :cond_17
    const-string v0, "last_read_time"

    .line 472
    .line 473
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-nez v0, :cond_18

    .line 478
    .line 479
    const-string v0, "last_read_time"

    .line 480
    .line 481
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    check-cast v0, Ljava/lang/Number;

    .line 486
    .line 487
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 488
    .line 489
    .line 490
    move-result-wide v0

    .line 491
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_read_time:J

    .line 492
    .line 493
    :cond_18
    const-string v0, "downloading"

    .line 494
    .line 495
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    if-nez v0, :cond_19

    .line 500
    .line 501
    const-string v0, "downloading"

    .line 502
    .line 503
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    check-cast p1, Ljava/lang/Number;

    .line 508
    .line 509
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 510
    .line 511
    .line 512
    move-result p1

    .line 513
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_downloading:I

    .line 514
    .line 515
    :cond_19
    return-void
.end method

.method public updateOld(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_35

    .line 1
    const-string v0, "cur_req_pos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_req_pos:J

    .line 3
    :cond_0
    const-string v0, "cur_end_pos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_end_pos:J

    .line 5
    :cond_1
    const-string v0, "cur_cache_pos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_cache_pos:J

    .line 7
    :cond_2
    const-string v0, "cache_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    .line 9
    :cond_3
    const-string v0, "down_pos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_down_pos:J

    .line 11
    :cond_4
    const-string v0, "err_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_error_code:I

    .line 13
    :cond_5
    const-string v0, "player_wait_num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_num:I

    .line 15
    :cond_6
    const-string v0, "player_wait_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_time:J

    .line 17
    :cond_7
    const-string v0, "reply_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_reply_size:J

    .line 19
    :cond_8
    const-string/jumbo v0, "stage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_stage:I

    .line 21
    :cond_9
    const-string v0, "cur_host"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_host:Ljava/lang/String;

    .line 23
    :cond_a
    const-string v0, "cur_ip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    .line 25
    :cond_b
    const-string/jumbo v0, "speed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 26
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_speed:I

    .line 27
    :cond_c
    const-string v0, "cdn_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_type:I

    .line 29
    :cond_d
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_url:Ljava/lang/String;

    .line 31
    :cond_e
    const-string v0, "file_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 32
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_file_key:Ljava/lang/String;

    .line 33
    :cond_f
    const-string v0, "is_socrf"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_is_socrf:I

    .line 35
    :cond_10
    const-string/jumbo v0, "url_index"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 36
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_url_index:I

    .line 37
    :cond_11
    const-string v0, "re_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_re_url:Ljava/lang/String;

    .line 39
    :cond_12
    const-string v0, "cur_source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 40
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_soure:I

    .line 41
    :cond_13
    const-string v0, "extra_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 42
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_extra_info:Ljava/lang/String;

    .line 43
    :cond_14
    const-string/jumbo v0, "status_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_code:I

    .line 45
    :cond_15
    const-string v0, "req_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 46
    const-string v0, "req_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_t:J

    .line 47
    :cond_16
    const-string v0, "end_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 48
    const-string v0, "end_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_end_t:J

    .line 49
    :cond_17
    const-string v0, "dns_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 50
    const-string v0, "dns_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_dns_t:J

    .line 51
    :cond_18
    const-string/jumbo v0, "tcp_con_start_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 52
    const-string/jumbo v0, "tcp_con_start_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_start_t:J

    .line 53
    :cond_19
    const-string/jumbo v0, "tcp_con_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 54
    const-string/jumbo v0, "tcp_con_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_end_t:J

    .line 55
    :cond_1a
    const-string/jumbo v0, "tcp_first_pack_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 56
    const-string/jumbo v0, "tcp_first_pack_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ttfp:J

    .line 57
    :cond_1b
    const-string v0, "http_first_body_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 58
    const-string v0, "http_first_body_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_httpfb:J

    .line 59
    :cond_1c
    const-string v0, "http_open_end_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 60
    const-string v0, "http_open_end_t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_open_end_t:J

    .line 61
    :cond_1d
    const-string v0, "fs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 62
    const-string v0, "fs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_fs:J

    .line 63
    :cond_1e
    const-string v0, "full_speed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 64
    const-string v0, "full_speed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_pcdn_full_speed:I

    .line 65
    :cond_1f
    const-string/jumbo v0, "tbs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 66
    const-string/jumbo v0, "tbs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tbs:J

    .line 67
    :cond_20
    const-string v0, "lbs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 68
    const-string v0, "lbs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_lbs:J

    .line 69
    :cond_21
    const-string v0, "req_err"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 70
    const-string v0, "req_err"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_res_err:I

    .line 71
    :cond_22
    const-string v0, "read_src"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 72
    const-string v0, "read_src"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_read_src:I

    .line 73
    :cond_23
    const-string v0, "seek_times"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 74
    const-string v0, "seek_times"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_seek_num:I

    .line 75
    :cond_24
    const-string v0, "last_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 76
    const-string v0, "last_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_msg:Ljava/lang/String;

    .line 77
    :cond_25
    const-string v0, "server_timing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 78
    const-string v0, "server_timing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_server_timing:Ljava/lang/String;

    .line 79
    :cond_26
    const-string/jumbo v0, "v_lt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 80
    const-string/jumbo v0, "v_lt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_v_lt:I

    .line 81
    :cond_27
    const-string/jumbo v0, "v_p2p_ier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 82
    const-string/jumbo v0, "v_p2p_ier"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_v_p2p_ier:I

    .line 83
    :cond_28
    const-string v0, "req_num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 84
    const-string v0, "req_num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_num:I

    .line 85
    :cond_29
    const-string v0, "ip_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 86
    const-string v0, "ip_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ip_list:Ljava/lang/String;

    .line 87
    :cond_2a
    const-string v0, "blocked_ip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 88
    const-string v0, "blocked_ip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_blocked_ips:Ljava/lang/String;

    .line 89
    :cond_2b
    const-string v0, "cdn_cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 90
    const-string v0, "cdn_cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_cache:Ljava/lang/String;

    .line 91
    :cond_2c
    const-string v0, "client_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 92
    const-string v0, "client_info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_client_info:Ljava/lang/String;

    .line 93
    :cond_2d
    const-string v0, "disable_seek"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 94
    const-string v0, "disable_seek"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_disable_seek:I

    .line 95
    :cond_2e
    const-string v0, "mem_buffer_len"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 96
    const-string v0, "mem_buffer_len"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_mem_buffer_len:I

    .line 97
    :cond_2f
    const-string v0, "disk_buffer_len"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 98
    const-string v0, "disk_buffer_len"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_disk_buffer_len:J

    .line 99
    :cond_30
    const-string v0, "send_offset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 100
    const-string v0, "send_offset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_send_offset:J

    .line 101
    :cond_31
    const-string v0, "last_req_offset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 102
    const-string v0, "last_req_offset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_req_offset:J

    .line 103
    :cond_32
    const-string v0, "last_ip_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 104
    const-string v0, "last_ip_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_ip_list:Ljava/lang/String;

    .line 105
    :cond_33
    const-string v0, "last_read_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 106
    const-string v0, "last_read_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_read_time:J

    .line 107
    :cond_34
    const-string v0, "downloading"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 108
    const-string v0, "downloading"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_downloading:I

    :cond_35
    return-void
.end method
