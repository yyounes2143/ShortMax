.class public final Lad-manager/b/d0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:I

.field public final synthetic i:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/b/d0;->i:Landroid/app/Activity;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1

    .line 1
    new-instance p1, Lad-manager/b/d0;

    .line 2
    .line 3
    iget-object v0, p0, Lad-manager/b/d0;->i:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lad-manager/b/d0;-><init>(Landroid/app/Activity;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    new-instance p1, Lad-manager/b/d0;

    .line 6
    .line 7
    iget-object v0, p0, Lad-manager/b/d0;->i:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-direct {p1, v0, p2}, Lad-manager/b/d0;-><init>(Landroid/app/Activity;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lad-manager/b/d0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    const-string v0, "requestConsentInfoUpdate exception -> "

    .line 2
    .line 3
    const-string v1, "requestConsentInfoUpdate start -> "

    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget v3, p0, Lad-manager/b/d0;->h:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-ne v3, v4, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lca/i;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    sget-object p1, Lca/i;->a:Lca/i;

    .line 50
    .line 51
    const-string v0, "requestConsentInfoUpdate ignore -> isUpdating = true"

    .line 52
    .line 53
    invoke-static {p1, v0}, Lca/i;->b(Lca/i;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    iget-object p1, p0, Lad-manager/b/d0;->i:Landroid/app/Activity;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :try_start_1
    sget-object v3, Lca/i;->a:Lca/i;

    .line 72
    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "consentInfo"

    .line 79
    .line 80
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 v1, 0x2

    .line 84
    const/4 v9, 0x0

    .line 85
    invoke-static {v3, p1, v9, v1, v9}, Lca/i;->u(Lca/i;Lcom/google/android/ump/ConsentInformation;Lcom/google/android/ump/FormError;ILjava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v3, v1}, Lca/i;->d(Lca/i;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lad-manager/b/d0;->i:Landroid/app/Activity;

    .line 100
    .line 101
    invoke-static {v3, v1}, Lca/i;->a(Lca/i;Landroid/app/Activity;)Lcom/google/android/ump/ConsentRequestParameters;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v3, p0, Lad-manager/b/d0;->i:Landroid/app/Activity;

    .line 106
    .line 107
    iput v4, p0, Lad-manager/b/d0;->h:I

    .line 108
    .line 109
    new-instance v8, Lkotlinx/coroutines/e;

    .line 110
    .line 111
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-direct {v8, v9, v4}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8}, Lkotlinx/coroutines/e;->H()V

    .line 119
    .line 120
    .line 121
    new-instance v4, Lc/b;

    .line 122
    .line 123
    invoke-direct {v4, p1, v6, v7, v8}, Lc/b;-><init>(Lcom/google/android/ump/ConsentInformation;JLkotlinx/coroutines/e;)V

    .line 124
    .line 125
    .line 126
    new-instance v9, Lc/c;

    .line 127
    .line 128
    invoke-direct {v9, p1, v6, v7, v8}, Lc/c;-><init>(Lcom/google/android/ump/ConsentInformation;JLkotlinx/coroutines/e;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {p1, v3, v1, v4, v9}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-ne p1, v1, :cond_3

    .line 143
    .line 144
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    if-ne p1, v2, :cond_4

    .line 148
    .line 149
    return-object v2

    .line 150
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    invoke-static {}, Lca/i;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    .line 162
    .line 163
    move v5, p1

    .line 164
    goto :goto_2

    .line 165
    :goto_1
    :try_start_2
    sget-object v1, Lca/i;->a:Lca/i;

    .line 166
    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {v1, p1}, Lca/i;->b(Lca/i;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lca/i;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 191
    .line 192
    .line 193
    :goto_2
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    return-object p1

    .line 198
    :goto_3
    invoke-static {}, Lca/i;->e()Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    .line 204
    .line 205
    throw p1
.end method
