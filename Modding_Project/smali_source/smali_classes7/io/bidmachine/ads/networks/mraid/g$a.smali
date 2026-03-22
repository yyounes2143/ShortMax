.class Lio/bidmachine/ads/networks/mraid/g$a;
.super Ljava/lang/Object;
.source "MraidFullScreenAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/ads/networks/mraid/g;->q(Lio/bidmachine/ContextProvider;Lxq/i;Lxq/j;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/ads/networks/mraid/m;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lxq/i;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/bidmachine/ads/networks/mraid/g;


# direct methods
.method constructor <init>(Lio/bidmachine/ads/networks/mraid/g;Lio/bidmachine/ads/networks/mraid/m;Landroid/content/Context;Lxq/i;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ads/networks/mraid/g$a;->e:Lio/bidmachine/ads/networks/mraid/g;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/ads/networks/mraid/g$a;->b:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lio/bidmachine/ads/networks/mraid/g$a;->c:Lxq/i;

    .line 8
    .line 9
    iput-object p5, p0, Lio/bidmachine/ads/networks/mraid/g$a;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/g$a;->e:Lio/bidmachine/ads/networks/mraid/g;

    .line 2
    .line 3
    invoke-static {}, Lio/bidmachine/iab/mraid/e;->u()Lio/bidmachine/iab/mraid/e$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 8
    .line 9
    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/m;->g:Lio/bidmachine/iab/CacheControl;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->e(Lio/bidmachine/iab/CacheControl;)Lio/bidmachine/iab/mraid/e$a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 16
    .line 17
    iget v2, v2, Lio/bidmachine/ads/networks/mraid/m;->h:F

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->m(F)Lio/bidmachine/iab/mraid/e$a;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 24
    .line 25
    iget v2, v2, Lio/bidmachine/ads/networks/mraid/m;->i:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->g(F)Lio/bidmachine/iab/mraid/e$a;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 33
    .line 34
    iget-boolean v2, v2, Lio/bidmachine/ads/networks/mraid/m;->e:Z

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->b(Z)Lio/bidmachine/iab/mraid/e$a;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lio/bidmachine/ads/networks/mraid/l;

    .line 41
    .line 42
    iget-object v3, p0, Lio/bidmachine/ads/networks/mraid/g$a;->b:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v4, p0, Lio/bidmachine/ads/networks/mraid/g$a;->c:Lxq/i;

    .line 45
    .line 46
    iget-object v5, p0, Lio/bidmachine/ads/networks/mraid/g$a;->e:Lio/bidmachine/ads/networks/mraid/g;

    .line 47
    .line 48
    invoke-static {v5}, Lio/bidmachine/ads/networks/mraid/g;->n(Lio/bidmachine/ads/networks/mraid/g;)Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-direct {v2, v3, v4, v5}, Lio/bidmachine/ads/networks/mraid/l;-><init>(Landroid/content/Context;Lxq/i;Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->k(Lio/bidmachine/iab/mraid/f;)Lio/bidmachine/iab/mraid/e$a;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 60
    .line 61
    iget-boolean v2, v2, Lio/bidmachine/ads/networks/mraid/m;->j:Z

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->p(Z)Lio/bidmachine/iab/mraid/e$a;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 68
    .line 69
    iget-boolean v2, v2, Lio/bidmachine/ads/networks/mraid/m;->k:Z

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->q(Z)Lio/bidmachine/iab/mraid/e$a;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 76
    .line 77
    iget v2, v2, Lio/bidmachine/ads/networks/mraid/m;->m:I

    .line 78
    .line 79
    int-to-float v2, v2

    .line 80
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->i(F)Lio/bidmachine/iab/mraid/e$a;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 85
    .line 86
    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/m;->l:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->n(Ljava/lang/String;)Lio/bidmachine/iab/mraid/e$a;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 93
    .line 94
    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/m;->n:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->f(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/e$a;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 101
    .line 102
    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/m;->o:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->h(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/e$a;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->a:Lio/bidmachine/ads/networks/mraid/m;

    .line 109
    .line 110
    iget-object v2, v2, Lio/bidmachine/ads/networks/mraid/m;->p:Lio/bidmachine/iab/utils/IabElementStyle;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->o(Lio/bidmachine/iab/utils/IabElementStyle;)Lio/bidmachine/iab/mraid/e$a;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->e:Lio/bidmachine/ads/networks/mraid/g;

    .line 117
    .line 118
    invoke-static {v2}, Lio/bidmachine/ads/networks/mraid/g;->n(Lio/bidmachine/ads/networks/mraid/g;)Lio/bidmachine/measurer/MraidOMSDKAdMeasurer;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->c(Lio/bidmachine/iab/measurer/MraidAdMeasurer;)Lio/bidmachine/iab/mraid/e$a;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget-object v2, p0, Lio/bidmachine/ads/networks/mraid/g$a;->b:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Lio/bidmachine/iab/mraid/e$a;->a(Landroid/content/Context;)Lio/bidmachine/iab/mraid/e;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Lio/bidmachine/ads/networks/mraid/g;->m(Lio/bidmachine/ads/networks/mraid/g;Lio/bidmachine/iab/mraid/e;)Lio/bidmachine/iab/mraid/e;

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lio/bidmachine/ads/networks/mraid/g$a;->e:Lio/bidmachine/ads/networks/mraid/g;

    .line 136
    .line 137
    invoke-static {v0}, Lio/bidmachine/ads/networks/mraid/g;->l(Lio/bidmachine/ads/networks/mraid/g;)Lio/bidmachine/iab/mraid/e;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/g$a;->d:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lio/bidmachine/iab/mraid/e;->t(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lio/bidmachine/ads/networks/mraid/g$a;->c:Lxq/i;

    .line 152
    .line 153
    const-string v2, "Exception loading MRAID fullscreen object"

    .line 154
    .line 155
    invoke-static {v2, v0}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v1, v0}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 160
    .line 161
    .line 162
    :goto_0
    return-void
.end method
