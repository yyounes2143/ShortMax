.class public Lhb/i1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lhb/i1;->a:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lhb/i1;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "/hms/component/"

    .line 12
    .line 13
    const-string v2, "component"

    .line 14
    .line 15
    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lhb/i1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lhb/i1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v4, "hianalytics_"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const-string v2, "hmsSdk"

    .line 41
    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    const-string p1, "file directory is mkdirs"

    .line 51
    .line 52
    invoke-static {v2, p1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-direct {p0, v1}, Lhb/i1;->d(Ljava/io/File;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_1

    .line 60
    .line 61
    invoke-static {v1, p2}, Lhb/g0;->d(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string p1, "refreshComponent():file is not found,and file is create failed"

    .line 66
    .line 67
    invoke-static {v2, p1}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method private d(Ljava/io/File;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    const-string p1, "hmsSdk"

    .line 15
    .line 16
    const-string v0, "create new file error!"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C
    .locals 5

    .line 1
    invoke-static {p1}, Lmb/b;->b(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Lmb/b;->b(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p3}, Lmb/b;->b(Ljava/lang/String;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-static {p4}, Lmb/b;->b(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    array-length v0, p1

    .line 18
    array-length v1, p2

    .line 19
    if-le v0, v1, :cond_0

    .line 20
    .line 21
    array-length v0, p2

    .line 22
    :cond_0
    array-length v1, p3

    .line 23
    if-le v0, v1, :cond_1

    .line 24
    .line 25
    array-length v0, p3

    .line 26
    :cond_1
    array-length v1, p4

    .line 27
    if-le v0, v1, :cond_2

    .line 28
    .line 29
    array-length v0, p4

    .line 30
    :cond_2
    new-array v1, v0, [C

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    :goto_0
    if-ge v2, v0, :cond_3

    .line 34
    .line 35
    aget-byte v3, p1, v2

    .line 36
    .line 37
    aget-byte v4, p2, v2

    .line 38
    .line 39
    xor-int/2addr v3, v4

    .line 40
    aget-byte v4, p3, v2

    .line 41
    .line 42
    xor-int/2addr v3, v4

    .line 43
    aget-byte v4, p4, v2

    .line 44
    .line 45
    xor-int/2addr v3, v4

    .line 46
    int-to-char v3, v3

    .line 47
    aput-char v3, v1, v2

    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    return-object v1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lhb/i1;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "hianalytics_"

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0}, Lhb/i1;->d(Ljava/io/File;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-static {v0}, Lhb/g0;->a(Ljava/io/File;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_0
    const/16 p1, 0x80

    .line 39
    .line 40
    invoke-static {p1}, Lmb/a;->d(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Lhb/g0;->d(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object p1
.end method

.method private g()Z
    .locals 6

    .line 1
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Privacy_MY"

    .line 6
    .line 7
    const-string v2, "assemblyFlash"

    .line 8
    .line 9
    const-wide/16 v3, -0x1

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lhb/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    cmp-long v2, v3, v0

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v0, "hmsSdk"

    .line 21
    .line 22
    const-string v1, "First init components"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v3

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    sub-long/2addr v4, v0

    .line 33
    const-wide v0, 0x757b12c00L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    cmp-long v0, v4, v0

    .line 39
    .line 40
    if-lez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x0

    .line 44
    :goto_0
    return v3
.end method

.method private static h(Ljava/io/File;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_5

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_5

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_5

    .line 22
    .line 23
    array-length v2, v1

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    array-length v2, v1

    .line 28
    :goto_0
    if-ge v0, v2, :cond_4

    .line 29
    .line 30
    aget-object v3, v1, v0

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v5, "delete file failed : "

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string v4, "hmsSdk"

    .line 66
    .line 67
    invoke-static {v4, v3}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    invoke-static {v3}, Lhb/i1;->h(Ljava/io/File;)Z

    .line 78
    .line 79
    .line 80
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    return p0

    .line 88
    :cond_5
    :goto_2
    return v0
.end method

.method public static i()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "/"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "hms"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/io/File;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lhb/i1;->h(Ljava/io/File;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "f6040d0e807aaec325ecf44823765544e92905158169f694b282bf17388632cf95a83bae7d2d235c1f039b0df1dcca5fda619b6f7f459f2ff8d70ddb7b601592fe29fcae58c028f319b3b12495e67aa5390942a997a8cb572c8030b2df5c2b622608bea02b0c3e5d4dff3f72c9e3204049a45c0760cd3604af8d57f0e0c693cc"

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 10

    .line 1
    invoke-direct {p0}, Lhb/i1;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lhb/i1;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "maywnj"

    .line 10
    .line 11
    const-string v3, "marfil"

    .line 12
    .line 13
    const-string v4, "febdoc"

    .line 14
    .line 15
    const-string v5, "aprpap"

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v1, "hmsSdk"

    .line 20
    .line 21
    const-string v6, "refresh components"

    .line 22
    .line 23
    invoke-static {v1, v6}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x80

    .line 27
    .line 28
    invoke-static {v1}, Lmb/a;->d(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-direct {p0, v5, v6}, Lhb/i1;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lmb/a;->d(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-direct {p0, v4, v5}, Lhb/i1;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lmb/a;->d(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-direct {p0, v3, v4}, Lhb/i1;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lmb/a;->d(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {p0, v2, v1}, Lhb/i1;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    const-string v3, "Privacy_MY"

    .line 65
    .line 66
    const-string v9, "assemblyFlash"

    .line 67
    .line 68
    invoke-static {v2, v3, v9, v7, v8}, Lhb/l;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0, v5}, Lhb/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-direct {p0, v4}, Lhb/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-direct {p0, v3}, Lhb/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-direct {p0, v2}, Lhb/i1;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :goto_0
    invoke-direct {p0, v6, v5, v4, v0}, Lhb/i1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[C

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v1}, Lmb/b;->b(Ljava/lang/String;)[B

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/16 v2, 0x2710

    .line 97
    .line 98
    const/16 v3, 0x10

    .line 99
    .line 100
    invoke-static {v0, v1, v2, v3}, Lkb/a;->b([C[BII)[B

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lmb/b;->a([B)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0
.end method
