.class public final Lcom/inmobi/media/t3;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/v3;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/v3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/t3;->a:Lcom/inmobi/media/v3;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/t3;->a:Lcom/inmobi/media/v3;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/inmobi/media/v3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    .line 10
    .line 11
    return-void
.end method

.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 4

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "client"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/inmobi/media/t3;->a:Lcom/inmobi/media/v3;

    .line 12
    .line 13
    iput-object p2, p1, Lcom/inmobi/media/v3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/inmobi/media/v3;->c:Lcom/inmobi/media/k2;

    .line 16
    .line 17
    if-eqz p1, :cond_6

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    :try_start_0
    iget-object v0, p1, Lcom/inmobi/media/k2;->e:Lcom/inmobi/media/v3;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/inmobi/media/v3;->d:Landroidx/browser/customtabs/CustomTabsSession;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v0, Lcom/inmobi/media/v3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    new-instance v2, Lcom/inmobi/media/u3;

    .line 31
    .line 32
    invoke-direct {v2, v0}, Lcom/inmobi/media/u3;-><init>(Lcom/inmobi/media/v3;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v1, p2

    .line 41
    :goto_0
    iput-object v1, v0, Lcom/inmobi/media/v3;->d:Landroidx/browser/customtabs/CustomTabsSession;

    .line 42
    .line 43
    :cond_1
    if-eqz v1, :cond_2

    .line 44
    .line 45
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroidx/browser/customtabs/CustomTabsSession;->isEngagementSignalsApiAvailable(Landroid/os/Bundle;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    new-instance v2, Lcom/inmobi/media/j2;

    .line 54
    .line 55
    invoke-direct {v2, p1}, Lcom/inmobi/media/j2;-><init>(Lcom/inmobi/media/k2;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v0}, Landroidx/browser/customtabs/CustomTabsSession;->setEngagementSignalsCallback(Landroidx/browser/customtabs/EngagementSignalsCallback;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    :catch_0
    :cond_2
    :try_start_1
    iget-object v0, p1, Lcom/inmobi/media/k2;->a:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "parse(...)"

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/inmobi/media/k2;->a(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :catch_1
    :try_start_2
    iget-object v0, p1, Lcom/inmobi/media/k2;->f:Landroid/content/Context;

    .line 77
    .line 78
    iget-object v1, p1, Lcom/inmobi/media/k2;->a:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v2, p1, Lcom/inmobi/media/k2;->j:Ljava/lang/ref/WeakReference;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    check-cast v2, Lcom/inmobi/media/yb;

    .line 90
    .line 91
    iget-object v3, p1, Lcom/inmobi/media/k2;->d:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/media/z2;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    goto :goto_1

    .line 98
    :catch_2
    const/16 v0, 0x9

    .line 99
    .line 100
    :goto_1
    iget-object v1, p1, Lcom/inmobi/media/k2;->c:Lcom/inmobi/media/R6;

    .line 101
    .line 102
    if-nez v1, :cond_3

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_3
    const-string v2, "EX_NATIVE"

    .line 106
    .line 107
    iput-object v2, v1, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 108
    .line 109
    :goto_2
    if-eqz v0, :cond_5

    .line 110
    .line 111
    const/4 v1, 0x1

    .line 112
    if-ne v0, v1, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    iget-object p2, p1, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    check-cast p2, Lcom/inmobi/media/e2;

    .line 122
    .line 123
    if-eqz p2, :cond_6

    .line 124
    .line 125
    sget-object v1, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    .line 126
    .line 127
    iget-object p1, p1, Lcom/inmobi/media/k2;->c:Lcom/inmobi/media/R6;

    .line 128
    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-interface {p2, v1, p1, v0}, Lcom/inmobi/media/e2;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_5
    :goto_3
    iget-object v0, p1, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lcom/inmobi/media/e2;

    .line 144
    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    sget-object v1, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 148
    .line 149
    iget-object p1, p1, Lcom/inmobi/media/k2;->c:Lcom/inmobi/media/R6;

    .line 150
    .line 151
    invoke-interface {v0, v1, p1, p2}, Lcom/inmobi/media/e2;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    :goto_4
    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/t3;->a:Lcom/inmobi/media/v3;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/inmobi/media/v3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/inmobi/media/v3;->c:Lcom/inmobi/media/k2;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object v0, p1, Lcom/inmobi/media/k2;->c:Lcom/inmobi/media/R6;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "IN_NATIVE"

    .line 16
    .line 17
    iput-object v1, v0, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 18
    .line 19
    :goto_0
    iget-object v0, p1, Lcom/inmobi/media/k2;->i:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/inmobi/media/e2;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget-object v1, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/inmobi/media/k2;->c:Lcom/inmobi/media/R6;

    .line 32
    .line 33
    const/16 v2, 0x1f49

    .line 34
    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v0, v1, p1, v2}, Lcom/inmobi/media/e2;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/t3;->a:Lcom/inmobi/media/v3;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Lcom/inmobi/media/v3;->a:Landroidx/browser/customtabs/CustomTabsClient;

    .line 10
    .line 11
    return-void
.end method
