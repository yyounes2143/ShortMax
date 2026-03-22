.class Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$c;
.super Ljava/lang/Object;
.source "MBridgeBTVideoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$c;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const-string v0, "onClicked"

    .line 2
    .line 3
    const-string v1, "omsdk"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$c;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$c;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/iab/omid/library/mmadbridge/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "btv adUserInteraction click"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v2

    .line 31
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$c;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/webkit/WebView;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "code"

    .line 52
    .line 53
    sget v3, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->n:I

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    const-string v2, "id"

    .line 59
    .line 60
    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$c;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 61
    .line 62
    iget-object v3, v3, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    new-instance v2, Lorg/json/JSONObject;

    .line 68
    .line 69
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v3, "x"

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    const-string/jumbo v3, "y"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    const-string p1, "data"

    .line 101
    .line 102
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$c;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/webkit/WebView;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const/4 v3, 0x2

    .line 124
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p1, v2, v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_1
    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/d;->c()Lcom/mbridge/msdk/video/bt/component/d;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$c;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 137
    .line 138
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Landroid/webkit/WebView;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$c;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 143
    .line 144
    iget-object v2, v2, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->d:Ljava/lang/String;

    .line 145
    .line 146
    invoke-virtual {p1, v1, v0, v2}, Lcom/mbridge/msdk/video/bt/component/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_1
    :goto_1
    return-void
.end method
