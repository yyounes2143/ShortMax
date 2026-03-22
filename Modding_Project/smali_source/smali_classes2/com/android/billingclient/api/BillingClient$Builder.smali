.class public final Lcom/android/billingclient/api/BillingClient$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private volatile a:Lcom/android/billingclient/api/PendingPurchasesParams;

.field private final b:Landroid/content/Context;

.field private volatile c:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private volatile d:Lcom/android/billingclient/api/UserChoiceBillingListener;

.field private volatile e:Z

.field private volatile f:Z

.field volatile g:Z


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/zzt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->b:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method private final a()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->b:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/16 v3, 0x80

    .line 13
    .line 14
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 19
    .line 20
    const-string v2, "com.google.android.play.billingclient.enableBillingOverridesTesting"

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return v0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    const-string v2, "BillingClient"

    .line 29
    .line 30
    const-string v3, "Unable to retrieve metadata value for enableBillingOverridesTesting."

    .line 31
    .line 32
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return v0
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingClient;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v3, p0, Lcom/android/billingclient/api/BillingClient$Builder;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v3, :cond_b

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 6
    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->d:Lcom/android/billingclient/api/UserChoiceBillingListener;

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->e:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->f:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, "Please provide a valid listener for purchases updates."

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->a()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    new-instance v6, Lcom/android/billingclient/api/s;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    move-object v0, v6

    .line 42
    move-object v2, v3

    .line 43
    move-object v3, v4

    .line 44
    move-object v4, v5

    .line 45
    move-object v5, p0

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/s;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_2
    new-instance v6, Lcom/android/billingclient/api/b;

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v1, 0x0

    .line 56
    move-object v0, v6

    .line 57
    move-object v2, v3

    .line 58
    move-object v3, v4

    .line 59
    move-object v4, v5

    .line 60
    move-object v5, p0

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/b;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string v1, "Please provide a valid listener for Google Play Billing purchases updates when enabling User Choice Billing."

    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->a:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 75
    .line 76
    if-eqz v0, :cond_a

    .line 77
    .line 78
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->a:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams;->a()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_a

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 87
    .line 88
    if-eqz v0, :cond_8

    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->d:Lcom/android/billingclient/api/UserChoiceBillingListener;

    .line 91
    .line 92
    if-nez v0, :cond_6

    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClient$Builder;->a:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 95
    .line 96
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 97
    .line 98
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->a()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    new-instance v9, Lcom/android/billingclient/api/s;

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v1, 0x0

    .line 109
    const/4 v5, 0x0

    .line 110
    move-object v0, v9

    .line 111
    move-object v8, p0

    .line 112
    invoke-direct/range {v0 .. v8}, Lcom/android/billingclient/api/s;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    .line 113
    .line 114
    .line 115
    :goto_1
    move-object v6, v9

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    new-instance v9, Lcom/android/billingclient/api/b;

    .line 118
    .line 119
    const/4 v6, 0x0

    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v1, 0x0

    .line 122
    const/4 v5, 0x0

    .line 123
    move-object v0, v9

    .line 124
    move-object v8, p0

    .line 125
    invoke-direct/range {v0 .. v8}, Lcom/android/billingclient/api/b;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClient$Builder;->a:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 130
    .line 131
    iget-object v4, p0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 132
    .line 133
    iget-object v5, p0, Lcom/android/billingclient/api/BillingClient$Builder;->d:Lcom/android/billingclient/api/UserChoiceBillingListener;

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->a()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    new-instance v9, Lcom/android/billingclient/api/s;

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    const/4 v7, 0x0

    .line 145
    const/4 v1, 0x0

    .line 146
    move-object v0, v9

    .line 147
    move-object v8, p0

    .line 148
    invoke-direct/range {v0 .. v8}, Lcom/android/billingclient/api/s;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_7
    new-instance v9, Lcom/android/billingclient/api/b;

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    const/4 v7, 0x0

    .line 156
    const/4 v1, 0x0

    .line 157
    move-object v0, v9

    .line 158
    move-object v8, p0

    .line 159
    invoke-direct/range {v0 .. v8}, Lcom/android/billingclient/api/b;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_8
    iget-object v2, p0, Lcom/android/billingclient/api/BillingClient$Builder;->a:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 164
    .line 165
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->a()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_9

    .line 170
    .line 171
    new-instance v8, Lcom/android/billingclient/api/s;

    .line 172
    .line 173
    const/4 v5, 0x0

    .line 174
    const/4 v6, 0x0

    .line 175
    const/4 v1, 0x0

    .line 176
    const/4 v4, 0x0

    .line 177
    move-object v0, v8

    .line 178
    move-object v7, p0

    .line 179
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/s;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    .line 180
    .line 181
    .line 182
    :goto_2
    move-object v6, v8

    .line 183
    goto :goto_3

    .line 184
    :cond_9
    new-instance v8, Lcom/android/billingclient/api/b;

    .line 185
    .line 186
    const/4 v5, 0x0

    .line 187
    const/4 v6, 0x0

    .line 188
    const/4 v1, 0x0

    .line 189
    const/4 v4, 0x0

    .line 190
    move-object v0, v8

    .line 191
    move-object v7, p0

    .line 192
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/b;-><init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :goto_3
    return-object v6

    .line 197
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 198
    .line 199
    const-string v1, "Pending purchases for one-time products must be supported."

    .line 200
    .line 201
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v0

    .line 205
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string v1, "Please provide a valid Context."

    .line 208
    .line 209
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0
.end method

.method public enableAlternativeBillingOnly()Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzf;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->e:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public enableAutoServiceReconnection()Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzg;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->g:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public enableExternalOffer()Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzh;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/billingclient/api/BillingClient$Builder;->f:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0
    .param p1    # Lcom/android/billingclient/api/PendingPurchasesParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzn;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->a:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public enableUserChoiceBilling(Lcom/android/billingclient/api/UserChoiceBillingListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0
    .param p1    # Lcom/android/billingclient/api/UserChoiceBillingListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/billingclient/api/zzp;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->d:Lcom/android/billingclient/api/UserChoiceBillingListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;
    .locals 0
    .param p1    # Lcom/android/billingclient/api/PurchasesUpdatedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClient$Builder;->c:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 2
    .line 3
    return-object p0
.end method
