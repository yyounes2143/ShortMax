.class final Lio/bidmachine/DeviceInfo$b;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/w3;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/w3;)V
    .locals 0
    .param p1    # Lio/bidmachine/w3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/DeviceInfo$b;->a:Lio/bidmachine/w3;

    .line 5
    .line 6
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$b;->e()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->b:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/DeviceInfo$b;->b:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lio/bidmachine/DeviceInfo$b;->c:Ljava/lang/String;

    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, ":\\s*(.*)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method private e()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 3
    .line 4
    const-string v2, "/proc/cpuinfo"

    .line 5
    .line 6
    const-string v3, "r"

    .line 7
    .line 8
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    const-string v2, "model name:"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    const-string v2, "Hardware:"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v2, "vendor_id:"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-direct {p0, v0}, Lio/bidmachine/DeviceInfo$b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lio/bidmachine/DeviceInfo$b;->c:Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-object v0, v1

    .line 52
    goto :goto_3

    .line 53
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lio/bidmachine/DeviceInfo$b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lio/bidmachine/DeviceInfo$b;->b:Ljava/lang/String;

    .line 58
    .line 59
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->b:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    :cond_4
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_4

    .line 71
    :catchall_1
    move-exception v1

    .line 72
    move-object v4, v1

    .line 73
    move-object v1, v0

    .line 74
    move-object v0, v4

    .line 75
    :goto_2
    invoke-static {v1}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :catch_1
    :goto_3
    invoke-static {v0}, Lio/bidmachine/core/g;->j(Ljava/io/Closeable;)V

    .line 80
    .line 81
    .line 82
    :goto_4
    return-void
.end method


# virtual methods
.method c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method f(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "cpu_name"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->a:Lio/bidmachine/w3;

    .line 12
    .line 13
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/w3;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lio/bidmachine/DeviceInfo$b;->b:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const-string v2, "cpu_vendor"

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->a:Lio/bidmachine/w3;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v2}, Lio/bidmachine/w3;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lio/bidmachine/DeviceInfo$b;->c:Ljava/lang/String;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/DeviceInfo$b;->a()V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->a:Lio/bidmachine/w3;

    .line 57
    .line 58
    iget-object v3, p0, Lio/bidmachine/DeviceInfo$b;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, p1, v1, v3}, Lio/bidmachine/w3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lio/bidmachine/DeviceInfo$b;->a:Lio/bidmachine/w3;

    .line 64
    .line 65
    iget-object v1, p0, Lio/bidmachine/DeviceInfo$b;->c:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, p1, v2, v1}, Lio/bidmachine/w3;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method
