.class public final Le/t;
.super Lda/f;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public final m:Landroid/content/Context;

.field public final n:Lgt/g0;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lca/a;)V
    .locals 3

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lda/f;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "context.applicationContext"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Le/t;->m:Landroid/content/Context;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v0, v2, v0}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Le/t;->n:Lgt/g0;

    .line 44
    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Le/t;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Le/t;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lda/f;->Q(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p2}, Lda/f;->P(Lca/a;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Le/t;->W()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static final U(Le/t;Lca/d;)Lcom/google/android/gms/ads/AdRequest;
    .locals 6

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lca/d;->f()Lca/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lca/c;->b()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    sget-object v0, Lea/b;->a:Lea/b;

    .line 19
    .line 20
    invoke-virtual {p1}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lea/b;->d(Lcom/hades/aar/admanager/core/AdFormat;)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v3, "admob_custom_keyvals"

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v3, v2

    .line 39
    :goto_0
    if-nez v3, :cond_2

    .line 40
    .line 41
    sget-object v0, Lga/a;->a:Lga/a;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "buildAdRequest -> Get Pam bundle failed. Info: "

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "AdManager:Admob:Loader"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Le/t;->V(Lca/d;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_2
    invoke-virtual {v3}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v5, "admobCustomKeyValsBundle.keySet()"

    .line 73
    .line 74
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    invoke-virtual {p1}, Lca/d;->f()Lca/c;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5, v4}, Lca/c;->i(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Lca/d;->f()Lca/c;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    const-string v3, ""

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    const-string v4, "admobCustomKeyValsBundle.getString(key) ?: \"\""

    .line 106
    .line 107
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-virtual {v5, v3}, Lca/c;->j(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    invoke-virtual {p1}, Lca/d;->f()Lca/c;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {p1}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v0, v4}, Lea/b;->b(Lcom/hades/aar/admanager/core/AdFormat;)Ljava/lang/Double;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v3, v0}, Lca/c;->k(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 133
    .line 134
    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    .line 138
    .line 139
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v1, "Builder().addNetworkExtr\u2026pter::class.java, bundle)"

    .line 144
    .line 145
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    check-cast v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 149
    .line 150
    invoke-virtual {p1}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    sget-object v1, Lcom/hades/aar/admanager/core/AdFormat;->APP_OPEN:Lcom/hades/aar/admanager/core/AdFormat;

    .line 155
    .line 156
    if-ne p1, v1, :cond_6

    .line 157
    .line 158
    invoke-virtual {p0}, Lda/f;->s()Lca/a;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    instance-of p1, p0, Lea/a;

    .line 163
    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    move-object v2, p0

    .line 167
    check-cast v2, Lea/a;

    .line 168
    .line 169
    :cond_5
    if-eqz v2, :cond_6

    .line 170
    .line 171
    invoke-virtual {v2}, Lea/a;->l()I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setHttpTimeoutMillis(I)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 180
    .line 181
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    const-string p1, "builder.build()"

    .line 186
    .line 187
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Le/t;->V(Lca/d;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    :goto_3
    return-object p0
.end method

.method public static final X(Le/t;Lca/e;Lg/a;Ljava/lang/String;Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdError;->getCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p4}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "error.message"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p4}, Lcom/google/android/gms/ads/LoadAdError;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    invoke-static {p4}, Le/d;->a(Lcom/google/android/gms/ads/ResponseInfo;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    const-string v2, "adLoadParam"

    .line 26
    .line 27
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v2, "elapsedTime"

    .line 31
    .line 32
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v2, "cacheId"

    .line 36
    .line 37
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v2, "errMsg"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v2, "mediationName"

    .line 46
    .line 47
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Ld/d;->a(Lg/a;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    sget-object p2, Lga/a;->a:Lga/a;

    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v5, "AdmobLoader Load Failed -> format("

    .line 59
    .line 60
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v5, ") cost("

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, "ms) cacheId("

    .line 75
    .line 76
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ") err("

    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const/16 v2, 0x3a

    .line 91
    .line 92
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v2, ") mediation("

    .line 99
    .line 100
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const/16 v2, 0x29

    .line 107
    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "AdManager:Admob:Loader"

    .line 116
    .line 117
    invoke-virtual {p2, v3, v2}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p3}, Lda/f;->M(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1, v0, v1, p4}, Lda/f;->H(Lca/e;ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public static final Y(Le/t;Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 9

    .line 1
    const-string v0, "status"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/ads/initialization/InitializationStatus;->getAdapterStatusMap()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v6, Lad-manager/d/d;->d:Lad-manager/d/d;

    .line 15
    .line 16
    const/16 v7, 0x1e

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const-string v1, "\n"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v0, Lga/a;->a:Lga/a;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "AdMob Init Complete -> \n"

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "AdManager:Admob:Loader"

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Le/t;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Le/t;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lda/f;->R(Z)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Lca/e;)V
    .locals 1

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adLoadParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lg/c;->a:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v0, Lad-manager/d/f;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Lad-manager/d/f;-><init>(Le/t;Ljava/lang/String;Lca/e;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lg/c;->b(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final B(Ljava/lang/String;Lca/e;)V
    .locals 1

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adLoadParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lg/c;->a:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v0, Lad-manager/d/h;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Lad-manager/d/h;-><init>(Le/t;Ljava/lang/String;Lca/e;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lg/c;->b(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final C(Ljava/lang/String;Lca/e;)V
    .locals 1

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adLoadParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lg/c;->a:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v0, Lad-manager/d/j;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Lad-manager/d/j;-><init>(Le/t;Ljava/lang/String;Lca/e;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lg/c;->b(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final D(Ljava/lang/String;Lca/e;)V
    .locals 1

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "adLoadParam"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final E(Ljava/lang/String;Lca/e;)V
    .locals 1

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adLoadParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lg/c;->a:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v0, Lad-manager/d/l;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Lad-manager/d/l;-><init>(Le/t;Ljava/lang/String;Lca/e;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lg/c;->b(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final F(Ljava/lang/String;Lca/e;)V
    .locals 1

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adLoadParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lg/c;->a:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v0, Lad-manager/d/n;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Lad-manager/d/n;-><init>(Le/t;Ljava/lang/String;Lca/e;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lg/c;->b(Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final T(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, "AdManager:Admob:Loader"

    .line 2
    .line 3
    return-object p1
.end method

.method public final V(Lca/d;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p1, v1

    .line 15
    :goto_0
    sget-object v2, Lcom/hades/aar/admanager/core/AdFormat;->APP_OPEN:Lcom/hades/aar/admanager/core/AdFormat;

    .line 16
    .line 17
    if-ne p1, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lda/f;->s()Lca/a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of v2, p1, Lea/a;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    move-object v1, p1

    .line 28
    check-cast v1, Lea/a;

    .line 29
    .line 30
    :cond_1
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v1}, Lea/a;->l()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AbstractAdRequestBuilder;->setHttpTimeoutMillis(I)Lcom/google/android/gms/ads/AbstractAdRequestBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    .line 41
    .line 42
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "Builder().apply {\n      \u2026      }\n        }.build()"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p1
.end method

.method public final W()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/t;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Le/t;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Le/t;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Le/t;->n:Lgt/g0;

    .line 29
    .line 30
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    new-instance v4, Lad-manager/d/c;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-direct {v4, p0, v0}, Lad-manager/d/c;-><init>(Le/t;Lrs/c;)V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :cond_2
    :goto_0
    sget-object v0, Lga/a;->a:Lga/a;

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v2, "AdMob init skipped. Ready="

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Le/t;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "AdManager:Admob:Loader"

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final Z(Ljava/lang/String;Ljava/lang/Object;Lg/a;Lcom/google/android/gms/ads/ResponseInfo;)V
    .locals 8

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "realAd"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "elapsedTime"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p3}, Ld/d;->a(Lg/a;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    const-string p3, ""

    .line 21
    .line 22
    if-eqz p4, :cond_0

    .line 23
    .line 24
    invoke-virtual {p4}, Lcom/google/android/gms/ads/ResponseInfo;->getResponseExtras()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v1, "mediation_group_name"

    .line 31
    .line 32
    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    if-nez v0, :cond_1

    .line 39
    .line 40
    move-object v7, p3

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-object v7, v0

    .line 43
    :goto_1
    invoke-static {p4}, Le/d;->a(Lcom/google/android/gms/ads/ResponseInfo;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    move-object v1, p0

    .line 48
    move-object v2, p1

    .line 49
    move-object v3, p2

    .line 50
    invoke-super/range {v1 .. v7}, Lda/f;->S(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/t;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final a0()V
    .locals 5

    .line 1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 2
    .line 3
    const-string v1, "Start init AdMob SDK"

    .line 4
    .line 5
    const-string v2, "AdManager:Admob:Loader"

    .line 6
    .line 7
    invoke-virtual {v0, v2, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 11
    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    .line 14
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-direct {v0, v1, v3, v3}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy;->setPrivacy(Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    sget-object v1, Lga/a;->a:Lga/a;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "Set Moloco Privacy failed "

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v2, v0}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0}, Lda/f;->s()Lca/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    instance-of v1, v0, Lea/a;

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    check-cast v0, Lea/a;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_1
    if-nez v0, :cond_1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {v0}, Lca/a;->b()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v0}, Lea/a;->k()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    new-instance v3, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 72
    .line 73
    invoke-direct {v3}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {v0}, Lea/a;->m()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->addTestDevice(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_2
    :try_start_1
    iget-object v0, p0, Le/t;->m:Landroid/content/Context;

    .line 101
    .line 102
    new-instance v1, Le/s;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Le/s;-><init>(Le/t;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :catch_1
    move-exception v0

    .line 112
    sget-object v1, Lga/a;->a:Lga/a;

    .line 113
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v4, "AdMob Init Exception "

    .line 117
    .line 118
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v1, v2, v0}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Le/t;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    .line 133
    const/4 v1, 0x0

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    .line 136
    .line 137
    :goto_3
    return-void
.end method

.method public final init()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/t;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
