.class public Lcom/bytedance/bdtracker/a3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final h:[[J


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/bytedance/bdtracker/p1;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [J

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    new-array v2, v0, [J

    .line 8
    .line 9
    fill-array-data v2, :array_1

    .line 10
    .line 11
    .line 12
    new-array v3, v0, [J

    .line 13
    .line 14
    fill-array-data v3, :array_2

    .line 15
    .line 16
    .line 17
    new-array v4, v0, [J

    .line 18
    .line 19
    fill-array-data v4, :array_3

    .line 20
    .line 21
    .line 22
    new-array v0, v0, [J

    .line 23
    .line 24
    fill-array-data v0, :array_4

    .line 25
    .line 26
    .line 27
    filled-new-array {v1, v2, v3, v4, v0}, [[J

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/bytedance/bdtracker/a3;->h:[[J

    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        0xea60
        0x0
        0xa
    .end array-data

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :array_1
    .array-data 8
        0x1d4c0
        0x5
        0x1
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    :array_2
    .array-data 8
        0x3a980
        0x5
        0x1
    .end array-data

    :array_3
    .array-data 8
        0x75300
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 8
        0xea600
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/bdtracker/p1;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/bytedance/bdtracker/a3;->b:Lcom/bytedance/bdtracker/p1;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/bdtracker/a3;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/bytedance/bdtracker/a3;->c:I

    .line 10
    .line 11
    iget-object p2, p2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/bytedance/bdtracker/a3;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "downgrade_time"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    sub-long/2addr v4, v2

    .line 43
    const-wide/32 v2, 0xa4cb80

    .line 44
    .line 45
    .line 46
    cmp-long p2, v4, v2

    .line 47
    .line 48
    const-string v0, "downgrade_index"

    .line 49
    .line 50
    if-gez p2, :cond_0

    .line 51
    .line 52
    iget-object p2, p0, Lcom/bytedance/bdtracker/a3;->b:Lcom/bytedance/bdtracker/p1;

    .line 53
    .line 54
    iget-object p2, p2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/bytedance/bdtracker/a3;->a:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lcom/bytedance/bdtracker/a3;->c:I

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/a3;->b:Lcom/bytedance/bdtracker/p1;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 83
    .line 84
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/bytedance/bdtracker/a3;->a:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lcom/bytedance/bdtracker/a3;->a:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 131
    .line 132
    .line 133
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/a3;->b:Lcom/bytedance/bdtracker/p1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isCongestionControlEnable()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public b()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/a3;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/bytedance/bdtracker/a3;->c:I

    .line 9
    .line 10
    sget-object v1, Lcom/bytedance/bdtracker/a3;->h:[[J

    .line 11
    .line 12
    array-length v1, v1

    .line 13
    const/4 v2, 0x1

    .line 14
    sub-int/2addr v1, v2

    .line 15
    const/4 v3, 0x0

    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iget v4, p0, Lcom/bytedance/bdtracker/a3;->c:I

    .line 23
    .line 24
    add-int/2addr v4, v2

    .line 25
    iput v4, p0, Lcom/bytedance/bdtracker/a3;->c:I

    .line 26
    .line 27
    iput v2, p0, Lcom/bytedance/bdtracker/a3;->d:I

    .line 28
    .line 29
    iput v3, p0, Lcom/bytedance/bdtracker/a3;->e:I

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/bytedance/bdtracker/a3;->f:J

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/bytedance/bdtracker/a3;->g:J

    .line 34
    .line 35
    iget-object v2, p0, Lcom/bytedance/bdtracker/a3;->b:Lcom/bytedance/bdtracker/p1;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 38
    .line 39
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v4, p0, Lcom/bytedance/bdtracker/a3;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, "downgrade_time"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/bytedance/bdtracker/a3;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, "downgrade_index"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget v2, p0, Lcom/bytedance/bdtracker/a3;->c:I

    .line 86
    .line 87
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iput v3, p0, Lcom/bytedance/bdtracker/a3;->e:I

    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method public c()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/a3;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget v2, p0, Lcom/bytedance/bdtracker/a3;->e:I

    .line 13
    .line 14
    int-to-long v3, v2

    .line 15
    sget-object v5, Lcom/bytedance/bdtracker/a3;->h:[[J

    .line 16
    .line 17
    iget v6, p0, Lcom/bytedance/bdtracker/a3;->c:I

    .line 18
    .line 19
    aget-object v5, v5, v6

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    aget-wide v8, v5, v7

    .line 23
    .line 24
    cmp-long v3, v3, v8

    .line 25
    .line 26
    if-gez v3, :cond_2

    .line 27
    .line 28
    iget-wide v3, p0, Lcom/bytedance/bdtracker/a3;->g:J

    .line 29
    .line 30
    sub-long/2addr v0, v3

    .line 31
    const-wide/32 v3, 0x1b7740

    .line 32
    .line 33
    .line 34
    cmp-long v0, v0, v3

    .line 35
    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    add-int/2addr v2, v7

    .line 40
    iput v2, p0, Lcom/bytedance/bdtracker/a3;->e:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_0
    if-lez v6, :cond_3

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iget v2, p0, Lcom/bytedance/bdtracker/a3;->c:I

    .line 50
    .line 51
    sub-int/2addr v2, v7

    .line 52
    iput v2, p0, Lcom/bytedance/bdtracker/a3;->c:I

    .line 53
    .line 54
    iput v7, p0, Lcom/bytedance/bdtracker/a3;->d:I

    .line 55
    .line 56
    iput v7, p0, Lcom/bytedance/bdtracker/a3;->e:I

    .line 57
    .line 58
    iput-wide v0, p0, Lcom/bytedance/bdtracker/a3;->f:J

    .line 59
    .line 60
    iput-wide v0, p0, Lcom/bytedance/bdtracker/a3;->g:J

    .line 61
    .line 62
    iget-object v2, p0, Lcom/bytedance/bdtracker/a3;->b:Lcom/bytedance/bdtracker/p1;

    .line 63
    .line 64
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lcom/bytedance/bdtracker/a3;->a:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, "downgrade_time"

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/bytedance/bdtracker/a3;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, "downgrade_index"

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget v2, p0, Lcom/bytedance/bdtracker/a3;->c:I

    .line 113
    .line 114
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_1
    return-void
.end method
