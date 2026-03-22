.class public final Le/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/preload/PreloadCallback;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Le/k;

.field public final synthetic c:Lda/c;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/util/List;Le/k;Lda/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/c0;->a:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Le/c0;->b:Le/k;

    .line 4
    .line 5
    iput-object p3, p0, Le/c0;->c:Lda/c;

    .line 6
    .line 7
    iput p4, p0, Le/c0;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAdsAvailable(Lcom/google/android/gms/ads/preload/PreloadConfiguration;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "p0"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/preload/PreloadConfiguration;->getAdUnitId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "p0.adUnitId"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v0, Le/c0;->a:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    move-object v5, v4

    .line 36
    check-cast v5, Lca/e;

    .line 37
    .line 38
    invoke-virtual {v5}, Lca/e;->e()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v4, 0x0

    .line 50
    :goto_0
    check-cast v4, Lca/e;

    .line 51
    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    iget-object v3, v0, Le/c0;->b:Le/k;

    .line 55
    .line 56
    iget-object v5, v0, Le/c0;->c:Lda/c;

    .line 57
    .line 58
    iget v6, v0, Le/c0;->d:I

    .line 59
    .line 60
    iget-object v7, v3, Le/k;->b:Le/t;

    .line 61
    .line 62
    invoke-virtual {v7}, Lda/f;->n()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    iget-object v8, v3, Le/k;->b:Le/t;

    .line 67
    .line 68
    sget-object v9, Lad-manager/b/m;->READY:Lad-manager/b/m;

    .line 69
    .line 70
    invoke-virtual {v8, v7, v4, v9}, Lda/f;->m(Ljava/lang/String;Lca/e;Lad-manager/b/m;)Lca/d;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    sget-object v8, Lca/d;->n:Lc/e;

    .line 75
    .line 76
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lca/d;->a()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    invoke-virtual {v7, v8}, Lca/d;->x(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v10, v3, Le/k;->b:Le/t;

    .line 87
    .line 88
    const-string v14, "preloadAdmob"

    .line 89
    .line 90
    const/4 v15, 0x1

    .line 91
    const-wide/16 v12, 0x0

    .line 92
    .line 93
    move-object v11, v7

    .line 94
    invoke-virtual/range {v10 .. v15}, Lda/f;->J(Lca/d;JLjava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    sget-object v8, Lca/k;->a:Lca/k;

    .line 98
    .line 99
    new-instance v9, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v10, "preloadAd admob onAdPreloaded -> adUnitId="

    .line 102
    .line 103
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v10, "\nPreloadConfiguration="

    .line 110
    .line 111
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v17

    .line 121
    const/16 v21, 0xe

    .line 122
    .line 123
    const/16 v22, 0x0

    .line 124
    .line 125
    const/16 v18, 0x0

    .line 126
    .line 127
    const/16 v19, 0x0

    .line 128
    .line 129
    const/16 v20, 0x0

    .line 130
    .line 131
    move-object/from16 v16, v8

    .line 132
    .line 133
    invoke-static/range {v16 .. v22}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    if-eqz v5, :cond_2

    .line 137
    .line 138
    const-string v1, ""

    .line 139
    .line 140
    invoke-interface {v5, v2, v1, v4, v6}, Lda/c;->b(Ljava/lang/String;Ljava/lang/String;Lca/e;I)V

    .line 141
    .line 142
    .line 143
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, "preloadAd admob createAdCache -> format("

    .line 146
    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, ") adUnitId("

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Lca/e;->e()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v2, ") adInfo("

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v2, ") maxSize("

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4}, Lca/e;->g()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const/16 v2, 0x29

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v17

    .line 198
    const/16 v21, 0xe

    .line 199
    .line 200
    const/16 v22, 0x0

    .line 201
    .line 202
    const/16 v18, 0x0

    .line 203
    .line 204
    const/16 v19, 0x0

    .line 205
    .line 206
    const/16 v20, 0x0

    .line 207
    .line 208
    move-object/from16 v16, v8

    .line 209
    .line 210
    invoke-static/range {v16 .. v22}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v3, Le/k;->b:Le/t;

    .line 214
    .line 215
    invoke-virtual {v4}, Lca/e;->e()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v1, v2, v7}, Lda/f;->k(Ljava/lang/String;Lca/d;)V

    .line 220
    .line 221
    .line 222
    :cond_3
    return-void
.end method

.method public final onAdsExhausted(Lcom/google/android/gms/ads/preload/PreloadConfiguration;)V
    .locals 9

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/preload/PreloadConfiguration;->getAdUnitId()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "p0.adUnitId"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Le/c0;->a:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, Lca/e;

    .line 33
    .line 34
    invoke-virtual {v2}, Lca/e;->e()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_0
    check-cast v1, Lca/e;

    .line 47
    .line 48
    sget-object v2, Lca/k;->a:Lca/k;

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "preloadAd admob onAdsExhausted -> adUnitId="

    .line 53
    .line 54
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const/16 v7, 0xe

    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-static/range {v2 .. v8}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Le/c0;->c:Lda/c;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget v2, p0, Le/c0;->d:I

    .line 78
    .line 79
    invoke-interface {v0, p1, v1, v2}, Lda/c;->a(Ljava/lang/String;Lca/e;I)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method
