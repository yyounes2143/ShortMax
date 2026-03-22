.class public final Lcom/inmobi/media/Yd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/U0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/U0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "markupType"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/Yd;->a:Lcom/inmobi/media/U0;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/Yd;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/inmobi/media/Yd;->c:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/inmobi/media/Yd;->d:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/inmobi/media/Yd;->a:Lcom/inmobi/media/U0;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v1, Lcom/inmobi/media/U0;->a:Lcom/inmobi/media/S0;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/inmobi/media/S0;->q()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v2, "adType"

    .line 19
    .line 20
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/Yd;->a:Lcom/inmobi/media/U0;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, v1, Lcom/inmobi/media/U0;->a:Lcom/inmobi/media/S0;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/inmobi/media/Z;->l()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "plId"

    .line 42
    .line 43
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/Yd;->a:Lcom/inmobi/media/U0;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v1, v1, Lcom/inmobi/media/U0;->a:Lcom/inmobi/media/S0;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/inmobi/media/Z;->m()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    const-string v2, "plType"

    .line 63
    .line 64
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v1, p0, Lcom/inmobi/media/Yd;->a:Lcom/inmobi/media/U0;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    iget-object v1, v1, Lcom/inmobi/media/U0;->a:Lcom/inmobi/media/S0;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/inmobi/media/S0;->y()Lcom/inmobi/media/y0;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/inmobi/media/y0;->o()Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    move-object v1, v2

    .line 86
    :goto_0
    if-eqz v1, :cond_4

    .line 87
    .line 88
    const-string v3, "isRewarded"

    .line 89
    .line 90
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-object v1, p0, Lcom/inmobi/media/Yd;->c:Ljava/lang/String;

    .line 94
    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    const-string v3, "creativeId"

    .line 98
    .line 99
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_5
    iget-object v1, p0, Lcom/inmobi/media/Yd;->b:Ljava/lang/String;

    .line 103
    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    const-string v3, "creativeType"

    .line 107
    .line 108
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    :cond_6
    iget-object v1, p0, Lcom/inmobi/media/Yd;->d:Ljava/lang/String;

    .line 112
    .line 113
    const-string v3, "markupType"

    .line 114
    .line 115
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/inmobi/media/Yd;->e:Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v1, :cond_7

    .line 121
    .line 122
    move-object v2, v1

    .line 123
    goto :goto_1

    .line 124
    :cond_7
    const-string v1, "triggerSource"

    .line 125
    .line 126
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_1
    const-string v1, "trigger"

    .line 130
    .line 131
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/inmobi/media/Yd;->a:Lcom/inmobi/media/U0;

    .line 135
    .line 136
    if-eqz v1, :cond_8

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/inmobi/media/U0;->a()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-lez v1, :cond_8

    .line 147
    .line 148
    iget-object v1, p0, Lcom/inmobi/media/Yd;->a:Lcom/inmobi/media/U0;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/inmobi/media/U0;->a()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    const-string v2, "metadataBlob"

    .line 155
    .line 156
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    :cond_8
    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Yd;->a:Lcom/inmobi/media/U0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/inmobi/media/U0;->b:Lcom/inmobi/media/Zd;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/inmobi/media/Zd;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "networkType"

    .line 30
    .line 31
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/16 v1, 0x884

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "errorCode"

    .line 45
    .line 46
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 54
    .line 55
    sget-object v1, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 56
    .line 57
    const-string v2, "AdImpressionSuccessful"

    .line 58
    .line 59
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Yd;->a:Lcom/inmobi/media/U0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/inmobi/media/U0;->b:Lcom/inmobi/media/Zd;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/inmobi/media/Zd;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "networkType"

    .line 30
    .line 31
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/16 v1, 0x881

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "errorCode"

    .line 45
    .line 46
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget-object v1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 54
    .line 55
    sget-object v1, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 56
    .line 57
    const-string v2, "AdImpressionSuccessful"

    .line 58
    .line 59
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Yd;->a:Lcom/inmobi/media/U0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/inmobi/media/U0;->b:Lcom/inmobi/media/Zd;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/inmobi/media/Zd;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "networkType"

    .line 30
    .line 31
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "errorCode"

    .line 44
    .line 45
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-object v1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 53
    .line 54
    sget-object v1, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 55
    .line 56
    const-string v2, "AdImpressionSuccessful"

    .line 57
    .line 58
    invoke-static {v2, v0, v1}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
