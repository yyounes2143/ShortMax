.class Lcom/huawei/hms/utils/FileUtil$a;
.super Ljava/lang/Object;
.source "FileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/utils/FileUtil;->writeFile(Ljava/io/File;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/utils/FileUtil$a;->a:Ljava/io/File;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/huawei/hms/utils/FileUtil$a;->b:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/huawei/hms/utils/FileUtil$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/utils/FileUtil$a;->a:Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "FileUtil"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "In writeFile Failed to get local file."

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hms/utils/FileUtil$a;->a:Ljava/io/File;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-wide v4, p0, Lcom/huawei/hms/utils/FileUtil$a;->b:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    cmp-long v4, v2, v4

    .line 43
    .line 44
    const-string v5, "rw"

    .line 45
    .line 46
    if-lez v4, :cond_3

    .line 47
    .line 48
    :try_start_1
    iget-object v2, p0, Lcom/huawei/hms/utils/FileUtil$a;->a:Ljava/io/File;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/huawei/hms/utils/FileUtil$a;->a:Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    const-string v3, "last file delete failed."

    .line 63
    .line 64
    invoke-static {v1, v3}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    goto :goto_4

    .line 70
    :catch_0
    move-exception v2

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    :goto_0
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 73
    .line 74
    new-instance v4, Ljava/io/File;

    .line 75
    .line 76
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object v0, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    new-instance v4, Ljava/io/RandomAccessFile;

    .line 85
    .line 86
    iget-object v6, p0, Lcom/huawei/hms/utils/FileUtil$a;->a:Ljava/io/File;

    .line 87
    .line 88
    invoke-direct {v4, v6, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    :try_start_2
    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    .line 93
    .line 94
    move-object v0, v4

    .line 95
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    iget-object v3, p0, Lcom/huawei/hms/utils/FileUtil$a;->c:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v3, "line.separator"

    .line 106
    .line 107
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    goto :goto_5

    .line 124
    :catch_1
    move-exception v0

    .line 125
    move-object v2, v0

    .line 126
    move-object v0, v4

    .line 127
    :goto_2
    :try_start_4
    const-string v3, "writeFile exception:"

    .line 128
    .line 129
    invoke-static {v1, v3, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    .line 131
    .line 132
    :goto_3
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :goto_4
    move-object v4, v0

    .line 137
    move-object v0, v1

    .line 138
    :goto_5
    invoke-static {v4}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_4
    :goto_6
    const-string v0, "In writeFile, Failed to create directory."

    .line 143
    .line 144
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
