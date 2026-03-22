.class Lio/bidmachine/ads/networks/mraid/m;
.super Lxq/o;
.source "MraidParams.java"


# instance fields
.field final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final c:I

.field final d:I

.field final e:Z

.field final f:Z

.field final g:Lio/bidmachine/iab/CacheControl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final h:F

.field final i:I

.field final j:Z

.field final k:Z

.field final l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final m:I

.field final n:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final o:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final p:Lio/bidmachine/iab/utils/IabElementStyle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lxq/k;)V
    .locals 3
    .param p1    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lxq/o;-><init>(Lxq/k;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "creativeAdm"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/m;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "width"

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lgr/c;->e(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lio/bidmachine/ads/networks/mraid/m;->c:I

    .line 19
    .line 20
    const-string v0, "height"

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lgr/c;->e(Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lio/bidmachine/ads/networks/mraid/m;->d:I

    .line 27
    .line 28
    const-string v0, "cacheControl"

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lgr/c;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lfr/d;->b(Ljava/lang/Object;)Lio/bidmachine/iab/CacheControl;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/m;->g:Lio/bidmachine/iab/CacheControl;

    .line 39
    .line 40
    const-string v0, "placeholderTimeoutSec"

    .line 41
    .line 42
    invoke-interface {p1, v0}, Lgr/c;->o(Ljava/lang/Object;)F

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lio/bidmachine/ads/networks/mraid/m;->h:F

    .line 47
    .line 48
    const-string v0, "skipOffset"

    .line 49
    .line 50
    invoke-interface {p1, v0}, Lgr/c;->e(Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lio/bidmachine/ads/networks/mraid/m;->i:I

    .line 55
    .line 56
    const-string v0, "useNativeClose"

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lgr/c;->d(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/m;->e:Z

    .line 63
    .line 64
    const-string v0, "omsdk_enabled"

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-interface {p1, v0, v1}, Lgr/c;->l(Ljava/lang/Object;Z)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-static {}, Lym/a;->g()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 v1, 0x0

    .line 81
    :goto_0
    iput-boolean v1, p0, Lio/bidmachine/ads/networks/mraid/m;->f:Z

    .line 82
    .line 83
    const-string v0, "r1"

    .line 84
    .line 85
    invoke-interface {p1, v0}, Lgr/c;->d(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/m;->j:Z

    .line 90
    .line 91
    const-string v0, "r2"

    .line 92
    .line 93
    invoke-interface {p1, v0}, Lgr/c;->d(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput-boolean v0, p0, Lio/bidmachine/ads/networks/mraid/m;->k:Z

    .line 98
    .line 99
    const-string v0, "store_url"

    .line 100
    .line 101
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/m;->l:Ljava/lang/String;

    .line 106
    .line 107
    const-string v0, "progress_duration"

    .line 108
    .line 109
    invoke-interface {p1, v0}, Lgr/c;->e(Ljava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iput v0, p0, Lio/bidmachine/ads/networks/mraid/m;->m:I

    .line 114
    .line 115
    const-string v0, "close_button_control_asset"

    .line 116
    .line 117
    invoke-interface {p1, v0}, Lgr/c;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    instance-of v1, v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    if-eqz v1, :cond_1

    .line 125
    .line 126
    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 127
    .line 128
    invoke-static {v0}, Lfr/d;->c(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/iab/utils/IabElementStyle;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    move-object v0, v2

    .line 134
    :goto_1
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/m;->n:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 135
    .line 136
    const-string v0, "countdown_control_asset"

    .line 137
    .line 138
    invoke-interface {p1, v0}, Lgr/c;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    instance-of v1, v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 143
    .line 144
    if-eqz v1, :cond_2

    .line 145
    .line 146
    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 147
    .line 148
    invoke-static {v0}, Lfr/d;->c(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/iab/utils/IabElementStyle;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    goto :goto_2

    .line 153
    :cond_2
    move-object v0, v2

    .line 154
    :goto_2
    iput-object v0, p0, Lio/bidmachine/ads/networks/mraid/m;->o:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 155
    .line 156
    const-string v0, "progress_control_asset"

    .line 157
    .line 158
    invoke-interface {p1, v0}, Lgr/c;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    instance-of v0, p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 163
    .line 164
    if-eqz v0, :cond_3

    .line 165
    .line 166
    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 167
    .line 168
    invoke-static {p1}, Lfr/d;->c(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/iab/utils/IabElementStyle;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    :cond_3
    iput-object v2, p0, Lio/bidmachine/ads/networks/mraid/m;->p:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 173
    .line 174
    return-void
.end method


# virtual methods
.method public a(Lxq/c;)Z
    .locals 2
    .param p1    # Lxq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/m;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "creativeAdm"

    .line 11
    .line 12
    invoke-static {v0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    iget v0, p0, Lio/bidmachine/ads/networks/mraid/m;->c:I

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "width"

    .line 25
    .line 26
    invoke-static {v0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p1, v0}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    iget v0, p0, Lio/bidmachine/ads/networks/mraid/m;->d:I

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    const-string v0, "height"

    .line 39
    .line 40
    invoke-static {v0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {p1, v0}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    const/4 p1, 0x1

    .line 49
    return p1
.end method
