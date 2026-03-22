.class final Lcom/apm/insight/h/b$1;
.super Ljava/lang/Object;
.source "NpthSoData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/h/b;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:Z

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/insight/h/b$1;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/apm/insight/h/b$1;->a:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/apm/insight/h/b;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/apm/insight/h/b$1;->b:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/apm/insight/h/b;->c(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    const-string/jumbo v0, "updateSo"

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/apm/insight/h/b$1;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/apm/insight/runtime/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/apm/insight/h/b$1;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/apm/insight/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 45
    .line 46
    .line 47
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "doUnpackLibrary: "

    .line 50
    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/apm/insight/h/b$1;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {}, Lcom/apm/insight/e;->i()Lcom/apm/insight/runtime/ConfigManager;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/apm/insight/runtime/ConfigManager;->isDebugMode()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    const-string v2, "npth"

    .line 74
    .line 75
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/apm/insight/h/b$1;->b:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v1, v2, v0}, Lcom/apm/insight/h/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    const-string/jumbo v2, "updateSoError"

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/apm/insight/h/b$1;->b:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v2, v3}, Lcom/apm/insight/runtime/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    .line 99
    .line 100
    .line 101
    const-string v2, "NPTH_CATCH"

    .line 102
    .line 103
    invoke-static {v1, v2}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    :goto_0
    if-nez v1, :cond_2

    .line 108
    .line 109
    invoke-static {}, Lcom/apm/insight/h/b;->c()Ljava/util/HashMap;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v2, "2008-20250701130429"

    .line 118
    .line 119
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/apm/insight/h/b$1;->b:Ljava/lang/String;

    .line 125
    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v4, "/apminsight/selflib/"

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ".ver"

    .line 151
    .line 152
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    invoke-static {v0, v2, v1}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    .line 165
    .line 166
    :catchall_1
    const-string/jumbo v0, "updateSoSuccess"

    .line 167
    .line 168
    .line 169
    iget-object v1, p0, Lcom/apm/insight/h/b$1;->b:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v0, v1}, Lcom/apm/insight/runtime/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_2
    iget-boolean v0, p0, Lcom/apm/insight/h/b$1;->a:Z

    .line 176
    .line 177
    if-nez v0, :cond_3

    .line 178
    .line 179
    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/apm/insight/h/b$1;->a:Z

    .line 181
    .line 182
    const-string/jumbo v0, "updateSoPostRetry"

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/apm/insight/h/b$1;->b:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v0, v1}, Lcom/apm/insight/runtime/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {}, Lcom/apm/insight/runtime/m;->a()Lcom/apm/insight/runtime/p;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-wide/16 v1, 0xbb8

    .line 195
    .line 196
    invoke-virtual {v0, p0, v1, v2}, Lcom/apm/insight/runtime/p;->a(Ljava/lang/Runnable;J)Z

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_3
    const-string/jumbo v0, "updateSoFailed"

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Lcom/apm/insight/h/b$1;->b:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {v0, v1}, Lcom/apm/insight/runtime/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :cond_4
    return-void
.end method
