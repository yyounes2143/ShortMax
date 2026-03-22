.class public Lio/bidmachine/ads/networks/nast/b;
.super Lxq/o;
.source "NastParams.java"


# instance fields
.field final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final i:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final j:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final k:Lio/bidmachine/LabelData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final l:Lio/bidmachine/PrivacySheetData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lxq/k;)V
    .locals 2
    .param p1    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lxq/o;-><init>(Lxq/k;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "title"

    .line 5
    .line 6
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->b:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "description"

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->c:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "cta"

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->d:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "rating"

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lgr/c;->c(Ljava/lang/Object;)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->e:Ljava/lang/Float;

    .line 35
    .line 36
    const-string v0, "iconUrl"

    .line 37
    .line 38
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->f:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "imageUrl"

    .line 45
    .line 46
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->g:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "videoUrl"

    .line 53
    .line 54
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->h:Ljava/lang/String;

    .line 59
    .line 60
    const-string v0, "videoAdm"

    .line 61
    .line 62
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->i:Ljava/lang/String;

    .line 67
    .line 68
    const-string v0, "clickUrl"

    .line 69
    .line 70
    invoke-interface {p1, v0}, Lgr/c;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->j:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v0, Lmm/a;

    .line 77
    .line 78
    invoke-direct {v0}, Lmm/a;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v1, "adLabel"

    .line 82
    .line 83
    invoke-interface {p1, v1, v0}, Lgr/c;->g(Ljava/lang/Object;Lio/bidmachine/Function;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lio/bidmachine/LabelData;

    .line 88
    .line 89
    iput-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->k:Lio/bidmachine/LabelData;

    .line 90
    .line 91
    new-instance v0, Lmm/b;

    .line 92
    .line 93
    invoke-direct {v0}, Lmm/b;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v1, "privacySheet"

    .line 97
    .line 98
    invoke-interface {p1, v1, v0}, Lgr/c;->g(Ljava/lang/Object;Lio/bidmachine/Function;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lio/bidmachine/PrivacySheetData;

    .line 103
    .line 104
    iput-object p1, p0, Lio/bidmachine/ads/networks/nast/b;->l:Lio/bidmachine/PrivacySheetData;

    .line 105
    .line 106
    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Lio/bidmachine/PrivacySheetData;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/ads/networks/nast/b;->f(Ljava/lang/Object;)Lio/bidmachine/PrivacySheetData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;)Lio/bidmachine/LabelData;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/ads/networks/nast/b;->e(Ljava/lang/Object;)Lio/bidmachine/LabelData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic e(Ljava/lang/Object;)Lio/bidmachine/LabelData;
    .locals 0

    .line 1
    check-cast p0, Lio/bidmachine/LabelData;

    .line 2
    .line 3
    return-object p0
.end method

.method private static synthetic f(Ljava/lang/Object;)Lio/bidmachine/PrivacySheetData;
    .locals 0

    .line 1
    check-cast p0, Lio/bidmachine/PrivacySheetData;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lxq/c;)Z
    .locals 2
    .param p1    # Lxq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->b:Ljava/lang/String;

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
    const-string v0, "title"

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
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->d:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "cta"

    .line 29
    .line 30
    invoke-static {v0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p1, v0}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 35
    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    const/4 p1, 0x1

    .line 39
    return p1
.end method

.method d(Lxq/n;Lxq/c;)Z
    .locals 2
    .param p1    # Lxq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p2}, Lio/bidmachine/ads/networks/nast/b;->c(Lxq/c;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-interface {p1}, Lxq/n;->getAdRequestParameters()Lio/bidmachine/nativead/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lio/bidmachine/nativead/a;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lio/bidmachine/MediaAssetType;->Icon:Lio/bidmachine/MediaAssetType;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->f:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const-string p1, "iconUrl"

    .line 36
    .line 37
    invoke-static {p1}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p2, p1}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/nativead/a;->c()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    sget-object v0, Lio/bidmachine/MediaAssetType;->Image:Lio/bidmachine/MediaAssetType;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lio/bidmachine/ads/networks/nast/b;->g:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const-string p1, "imageUrl"

    .line 68
    .line 69
    invoke-static {p1}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p2, p1}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 74
    .line 75
    .line 76
    return v1

    .line 77
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/nativead/a;->c()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    sget-object v0, Lio/bidmachine/MediaAssetType;->Video:Lio/bidmachine/MediaAssetType;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lio/bidmachine/nativead/a;->a(Lio/bidmachine/MediaAssetType;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    iget-object p1, p0, Lio/bidmachine/ads/networks/nast/b;->i:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    iget-object p1, p0, Lio/bidmachine/ads/networks/nast/b;->h:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    const-string p1, "videoAdm or videoUrl"

    .line 108
    .line 109
    invoke-static {p1}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p2, p1}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :cond_3
    const/4 p1, 0x1

    .line 118
    return p1
.end method
