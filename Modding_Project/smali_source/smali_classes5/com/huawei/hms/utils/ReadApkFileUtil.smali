.class public Lcom/huawei/hms/utils/ReadApkFileUtil;
.super Ljava/lang/Object;
.source "ReadApkFileUtil.java"


# static fields
.field public static final EMUI10_PK:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAx4nUogUyMCmzHhaEb420yvpw9zBs+ETzE9Qm77bGxl1Iml9JEkBkNTsUWOstLgUBajNhV+BAMVBHKMEdzoQbL5kIHkTgUVM65yewd+5+BhrcB9OQ3LHp+0BN6aLKZh71T4WvsvHFhfhQpShuGWkRkSaVGLFTHxX70kpWLzeZ3RtqiEUNIufPR2SFCH6EmecJ+HdkmBOh603IblCpGxwSWse0fDI98wZBEmV88RFaiYEgyiezLlWvXzqIj6I/xuyd5nGAegjH2y3cmoDE6CubecoB1jf4KdgACXgdiQ4Oc63MfLGTor3l6RCqeUk4APAMtyhK83jc72W1sdXMd/sj2wIDAQAB"

.field public static final EMUI11_PK:Ljava/lang/String; = "MIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEAqq2eRTMYr2JHLtvuZzfgPrgU8oatD4Rar9fOD7E00es2VhtB3vTyaT2BvYPUPA/nbkHRPak3EZX77CfWj9tzLgSHJE8XLk9C+2ESkdrxCDA6z7I8X+cBDnA05OlCJeZFjnUbjYB8SP8M3BttdrvqtVPxTkEJhchC7UXnMLaJ3kQ3ZPjN7ubjYzO4rv7EtEpqr2bX+qjnSLIZZuUXraxqfdBuhGDIYq62dNsqiyrhX1mfvA3+43N4ZIs3BdfSYII8BNFmFxf+gyf1aoq386R2kAjHcrfOOhjAbZh+R1OAGLWPCqi3E9nB8EsZkeoTW/oIP6pJvgL3bnxq+1viT2dmZyipMgcx/3N6FJqkd67j/sPMtPlHJuq8/s0silzs13jAw1WBV6tWHFkLGpkWGs8jp50wQtndtY8cCPl2XPGmdPN72agH+zsHuKqr/HOB2TuzzaO8rKlGIDQlzZcCSHB28nnvOyBVN9xzLkbYiLnHfd6bTwzNPeqjWrTnPwKyH3BPAgMBAAE="

.field public static final KEY_SIGNATURE:Ljava/lang/String; = "Signature:"

.field public static final KEY_SIGNATURE2:Ljava/lang/String; = "Signature2:"

.field public static final KEY_SIGNATURE3:Ljava/lang/String; = "Signature3:"

.field private static final a:Ljava/lang/String; = "ReadApkFileUtil"

.field private static final b:Ljava/util/regex/Pattern;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\s*|\t|\r|\n"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->b:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->f:Ljava/lang/String;

    .line 11
    .line 12
    sput-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->g:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v1, v2, :cond_1

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    if-eq v1, v2, :cond_4

    .line 21
    .line 22
    int-to-char v1, v1

    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/16 v5, 0x1000

    .line 31
    .line 32
    if-ge v4, v5, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    new-instance p0, Ljava/io/IOException;

    .line 43
    .line 44
    const-string v0, "cert line is too long!"

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_5

    .line 59
    .line 60
    const-string v0, "\r"

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    :cond_5
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->b:Ljava/util/regex/Pattern;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    return-object v0
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/16 v0, 0x10

    .line 6
    .line 7
    new-array v0, v0, [C

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    array-length v1, p0

    .line 13
    mul-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    new-array v1, v1, [C

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    array-length v3, p0

    .line 19
    if-ge v2, v3, :cond_1

    .line 20
    .line 21
    aget-byte v3, p0, v2

    .line 22
    .line 23
    and-int/lit16 v4, v3, 0xff

    .line 24
    .line 25
    mul-int/lit8 v5, v2, 0x2

    .line 26
    .line 27
    ushr-int/lit8 v4, v4, 0x4

    .line 28
    .line 29
    aget-char v4, v0, v4

    .line 30
    .line 31
    aput-char v4, v1, v5

    .line 32
    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 34
    .line 35
    and-int/lit8 v3, v3, 0xf

    .line 36
    .line 37
    aget-char v3, v0, v3

    .line 38
    .line 39
    aput-char v3, v1, v5

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private static c([B)Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "manifest is null\uff01"

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 23
    .line 24
    new-instance v3, Ljava/io/InputStreamReader;

    .line 25
    .line 26
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_2
    invoke-static {p0, v1}, Lcom/huawei/hms/utils/ReadApkFileUtil;->e(Ljava/io/BufferedReader;Ljava/util/ArrayList;)Z

    .line 35
    .line 36
    .line 37
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50
    .line 51
    .line 52
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :catchall_1
    move-exception v1

    .line 57
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_2
    move-exception p0

    .line 62
    :try_start_8
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 66
    :goto_1
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catchall_3
    move-exception v1

    .line 71
    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :goto_2
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 75
    :catch_0
    sget-object p0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 76
    .line 77
    const-string v1, "getManifestLinesArrary IOException!"

    .line 78
    .line 79
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v0
.end method

.method public static checkSignature()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/huawei/hms/utils/ReadApkFileUtil;->n()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->d:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/huawei/hms/utils/ReadApkFileUtil;->l()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0

    .line 19
    :cond_1
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->c:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-static {}, Lcom/huawei/hms/utils/ReadApkFileUtil;->d()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    return v0
.end method

.method private static d()Z
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "30820122300d06092a864886f70d01010105000382010f003082010a0282010100a3d269348ac59923f65e8111c337605e29a1d1bc54fa96c1445050dd14d8d63b10f9f0230bb87ef348183660bedcabfdec045e235ed96935799fcdb4af5c97717ff3b0954eaf1b723225b3a00f81cbd67ce6dc5a4c07f7741ad3bf1913a480c6e267ab1740f409edd2dc33c8b718a8e30e56d9a93f321723c1d0c9ea62115f996812ceef186954595e39a19b74245542c407f7dddb1d12e6eedcfc0bd7cd945ef7255ad0fc9e796258e0fb5e52a23013d15033a32b4071b65f3f924ae5c5761e22327b4d2ae60f4158a5eb15565ba079de29b81540f5fbb3be101a95357f367fc661d797074ff3826950029c52223e4594673a24a334cae62d63b838ba3df9770203010001"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->m(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->g:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "SHA-256"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lcom/huawei/hms/utils/ReadApkFileUtil;->g(Ljava/lang/String;Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/huawei/hms/utils/ReadApkFileUtil;->m(Ljava/lang/String;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "SHA256withRSA"

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->f([B[B[BLjava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "verifyMDMSignatureV1 verify successful!"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    return v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "verifyMDMSignatureV1 verify failure!"

    .line 43
    .line 44
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :goto_0
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "verifyMDMSignatureV1 MDM verify Exception!:"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    const/4 v0, 0x0

    .line 75
    return v0
.end method

.method private static e(Ljava/io/BufferedReader;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-eqz v0, :cond_4

    .line 7
    .line 8
    const-string v2, "Name: META-INF/HUAWEI.CER"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_1
    const/4 v2, 0x1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v3, "Name:"

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :cond_0
    move v1, v2

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    return v1
.end method

.method private static f([B[B[BLjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const-string v0, "RSA"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p3, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p1}, Ljava/security/Signature;->update([B)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p2}, Ljava/security/Signature;->verify([B)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static getHmsPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.huawei.hwid"

    .line 6
    .line 7
    const/16 v1, 0x80

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    sget-object p0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "HMS is not found!"

    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    :goto_0
    return-object p0
.end method

.method private static h(Ljava/util/ArrayList;)[B
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/io/BufferedWriter;

    .line 7
    .line 8
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 9
    .line 10
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    move v4, v3

    .line 27
    :goto_0
    if-ge v4, v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {v1, v5, v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    const-string v5, "\r\n"

    .line 43
    .line 44
    const/4 v6, 0x2

    .line 45
    invoke-virtual {v1, v5, v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_3

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :goto_1
    :try_start_1
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v4, "getManifestBytesbySorted Exception!"

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v2, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    :goto_2
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :goto_3
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method private static i(Ljava/util/zip/ZipFile;)[B
    .locals 1

    .line 1
    const-string v0, "META-INF/MANIFEST.MF"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->j(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static isCertFound(Ljava/lang/String;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    const-string v0, "META-INF/HUAWEI.CER"

    .line 2
    .line 3
    const-string v1, "zipFile.close Exception!"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    .line 8
    .line 9
    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p0, v2

    .line 21
    :goto_0
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-static {v4, v0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->j(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->k([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_7

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_3

    .line 35
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :catch_1
    move-exception v0

    .line 40
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_2
    move v2, p0

    .line 65
    goto :goto_5

    .line 66
    :goto_3
    move-object v3, v4

    .line 67
    goto :goto_4

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_6

    .line 70
    :catch_2
    move-exception p0

    .line 71
    :goto_4
    :try_start_3
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v5, "isCertFound Exception!"

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    .line 96
    .line 97
    if-eqz v3, :cond_2

    .line 98
    .line 99
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :catch_3
    move-exception p0

    .line 104
    sget-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 105
    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_5
    return v2

    .line 129
    :goto_6
    move-object v4, v3

    .line 130
    :goto_7
    if-eqz v4, :cond_3

    .line 131
    .line 132
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 133
    .line 134
    .line 135
    goto :goto_8

    .line 136
    :catch_4
    move-exception v0

    .line 137
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 138
    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_3
    :goto_8
    throw p0
.end method

.method private static j(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    invoke-static {p0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 29
    .line 30
    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x1000

    .line 34
    .line 35
    :try_start_2
    new-array v2, v1, [B

    .line 36
    .line 37
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 40
    .line 41
    .line 42
    :try_start_3
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 43
    .line 44
    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    :try_start_4
    invoke-virtual {p1, v2, v5, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    :goto_0
    if-lez v6, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4, v2, v5, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2, v5, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v1

    .line 65
    goto :goto_7

    .line 66
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 70
    .line 71
    .line 72
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    invoke-static {p0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v4}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    :goto_1
    move-object v1, v0

    .line 87
    :goto_2
    move-object v0, v4

    .line 88
    goto/16 :goto_9

    .line 89
    .line 90
    :catchall_1
    move-exception v1

    .line 91
    goto/16 :goto_9

    .line 92
    .line 93
    :catch_1
    move-exception v1

    .line 94
    move-object v4, v0

    .line 95
    goto :goto_7

    .line 96
    :catchall_2
    move-exception v1

    .line 97
    move-object v3, v0

    .line 98
    move-object v4, v3

    .line 99
    :goto_3
    move-object v0, p1

    .line 100
    goto :goto_8

    .line 101
    :catch_2
    move-exception v1

    .line 102
    move-object v3, v0

    .line 103
    :goto_4
    move-object v4, v3

    .line 104
    goto :goto_7

    .line 105
    :catchall_3
    move-exception p1

    .line 106
    goto :goto_5

    .line 107
    :catch_3
    move-exception p1

    .line 108
    move-object v1, p1

    .line 109
    goto :goto_6

    .line 110
    :catchall_4
    move-exception p0

    .line 111
    move-object p1, p0

    .line 112
    move-object p0, v0

    .line 113
    :goto_5
    move-object v1, p1

    .line 114
    move-object p1, v0

    .line 115
    move-object v3, p1

    .line 116
    goto :goto_9

    .line 117
    :catch_4
    move-exception p0

    .line 118
    move-object v1, p0

    .line 119
    move-object p0, v0

    .line 120
    :goto_6
    move-object p1, v0

    .line 121
    move-object v3, p1

    .line 122
    goto :goto_4

    .line 123
    :goto_7
    :try_start_5
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 124
    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v6, "getManifestBytes Exception!"

    .line 131
    .line 132
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 147
    .line 148
    .line 149
    invoke-static {p0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v3}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v4}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 159
    .line 160
    .line 161
    return-object v0

    .line 162
    :catchall_5
    move-exception v0

    .line 163
    move-object v1, v0

    .line 164
    goto :goto_3

    .line 165
    :goto_8
    move-object p1, v0

    .line 166
    goto :goto_2

    .line 167
    :goto_9
    invoke-static {p0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 168
    .line 169
    .line 170
    invoke-static {p1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v3}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 177
    .line 178
    .line 179
    throw v1
.end method

.method private static k([B)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "manifest is null\uff01"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->c:Ljava/lang/String;

    .line 18
    .line 19
    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->d:Ljava/lang/String;

    .line 20
    .line 21
    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->e:Ljava/lang/String;

    .line 22
    .line 23
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 26
    .line 27
    .line 28
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    .line 29
    .line 30
    new-instance v3, Ljava/io/InputStreamReader;

    .line 31
    .line 32
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_2
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_0
    if-eqz v1, :cond_6

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_5

    .line 51
    .line 52
    const-string v3, "ApkHash:"

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    const-string v4, ":"

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    :try_start_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-static {v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    sput-object v3, Lcom/huawei/hms/utils/ReadApkFileUtil;->f:Ljava/lang/String;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    :goto_1
    const-string v3, "Signature:"

    .line 82
    .line 83
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Lcom/huawei/hms/utils/ReadApkFileUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->c:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const-string v3, "Signature2:"

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v1}, Lcom/huawei/hms/utils/ReadApkFileUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->d:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    goto :goto_0

    .line 139
    :cond_3
    const-string v3, "Signature3:"

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_4

    .line 146
    .line 147
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1}, Lcom/huawei/hms/utils/ReadApkFileUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    sput-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->e:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    goto :goto_0

    .line 168
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    .line 170
    .line 171
    const-string v1, "\r\n"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    .line 175
    .line 176
    :cond_5
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->a(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    sput-object v0, Lcom/huawei/hms/utils/ReadApkFileUtil;->g:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :goto_2
    move-object v1, p0

    .line 190
    goto :goto_6

    .line 191
    :catch_0
    move-object v1, p0

    .line 192
    goto :goto_3

    .line 193
    :catchall_1
    move-exception p0

    .line 194
    move-object v0, p0

    .line 195
    goto :goto_6

    .line 196
    :catchall_2
    move-exception p0

    .line 197
    move-object v0, p0

    .line 198
    move-object p0, v1

    .line 199
    goto :goto_5

    .line 200
    :catch_1
    move-object v2, v1

    .line 201
    :catch_2
    :goto_3
    :try_start_4
    sget-object p0, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 202
    .line 203
    const-string v0, "loadApkCert Exception!"

    .line 204
    .line 205
    invoke-static {p0, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 206
    .line 207
    .line 208
    move-object p0, v1

    .line 209
    :goto_4
    invoke-static {v2}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 210
    .line 211
    .line 212
    invoke-static {p0}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :catchall_3
    move-exception p0

    .line 217
    move-object v0, p0

    .line 218
    move-object p0, v1

    .line 219
    move-object v1, v2

    .line 220
    :goto_5
    move-object v2, v1

    .line 221
    goto :goto_2

    .line 222
    :goto_6
    invoke-static {v2}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v1}, Lcom/huawei/hms/utils/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 226
    .line 227
    .line 228
    throw v0
.end method

.method private static l()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAx4nUogUyMCmzHhaEb420yvpw9zBs+ETzE9Qm77bGxl1Iml9JEkBkNTsUWOstLgUBajNhV+BAMVBHKMEdzoQbL5kIHkTgUVM65yewd+5+BhrcB9OQ3LHp+0BN6aLKZh71T4WvsvHFhfhQpShuGWkRkSaVGLFTHxX70kpWLzeZ3RtqiEUNIufPR2SFCH6EmecJ+HdkmBOh603IblCpGxwSWse0fDI98wZBEmV88RFaiYEgyiezLlWvXzqIj6I/xuyd5nGAegjH2y3cmoDE6CubecoB1jf4KdgACXgdiQ4Oc63MfLGTor3l6RCqeUk4APAMtyhK83jc72W1sdXMd/sj2wIDAQAB"

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->g:Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "SHA-256"

    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->g(Ljava/lang/String;Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Lcom/huawei/hms/utils/ReadApkFileUtil;->d:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->m(Ljava/lang/String;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "SHA256withRSA"

    .line 23
    .line 24
    invoke-static {v1, v2, v3, v4}, Lcom/huawei/hms/utils/ReadApkFileUtil;->f([B[B[BLjava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "verifyMDMSignatureV2 verify successful!"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "verifyMDMSignatureV2 verify failure!"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :goto_0
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "verifyMDMSignatureV2 MDM verify Exception!:"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return v0
.end method

.method private static m(Ljava/lang/String;)[B
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [B

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    rem-int/lit8 v2, v0, 0x2

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    div-int/lit8 v2, v0, 0x2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    div-int/lit8 v2, v0, 0x2

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    :goto_0
    new-array v2, v2, [B

    .line 27
    .line 28
    :goto_1
    if-ge v1, v0, :cond_3

    .line 29
    .line 30
    add-int/lit8 v3, v1, 0x1

    .line 31
    .line 32
    const/16 v4, 0x10

    .line 33
    .line 34
    if-ge v3, v0, :cond_2

    .line 35
    .line 36
    div-int/lit8 v5, v1, 0x2

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-static {v6, v4}, Ljava/lang/Character;->digit(CI)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    shl-int/lit8 v6, v6, 0x4

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/2addr v6, v3

    .line 57
    int-to-byte v3, v6

    .line 58
    aput-byte v3, v2, v5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    div-int/lit8 v3, v1, 0x2

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    shl-int/lit8 v4, v4, 0x4

    .line 72
    .line 73
    int-to-byte v4, v4

    .line 74
    aput-byte v4, v2, v3

    .line 75
    .line 76
    :goto_2
    add-int/lit8 v1, v1, 0x2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    return-object v2
.end method

.method private static n()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "MIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEAqq2eRTMYr2JHLtvuZzfgPrgU8oatD4Rar9fOD7E00es2VhtB3vTyaT2BvYPUPA/nbkHRPak3EZX77CfWj9tzLgSHJE8XLk9C+2ESkdrxCDA6z7I8X+cBDnA05OlCJeZFjnUbjYB8SP8M3BttdrvqtVPxTkEJhchC7UXnMLaJ3kQ3ZPjN7ubjYzO4rv7EtEpqr2bX+qjnSLIZZuUXraxqfdBuhGDIYq62dNsqiyrhX1mfvA3+43N4ZIs3BdfSYII8BNFmFxf+gyf1aoq386R2kAjHcrfOOhjAbZh+R1OAGLWPCqi3E9nB8EsZkeoTW/oIP6pJvgL3bnxq+1viT2dmZyipMgcx/3N6FJqkd67j/sPMtPlHJuq8/s0silzs13jAw1WBV6tWHFkLGpkWGs8jp50wQtndtY8cCPl2XPGmdPN72agH+zsHuKqr/HOB2TuzzaO8rKlGIDQlzZcCSHB28nnvOyBVN9xzLkbYiLnHfd6bTwzNPeqjWrTnPwKyH3BPAgMBAAE="

    .line 3
    .line 4
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->g:Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "SHA-384"

    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->g(Ljava/lang/String;Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Lcom/huawei/hms/utils/ReadApkFileUtil;->e:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/huawei/hms/utils/ReadApkFileUtil;->m(Ljava/lang/String;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "SHA384withRSA"

    .line 23
    .line 24
    invoke-static {v1, v2, v3, v4}, Lcom/huawei/hms/utils/ReadApkFileUtil;->f([B[B[BLjava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "verifyMDMSignatureV3 verify successful!"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 42
    .line 43
    const-string v2, "verifyMDMSignatureV3 verify failure!"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :goto_0
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v4, "verifyMDMSignatureV3 MDM verify Exception!:"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return v0
.end method

.method public static verifyApkHash(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "close stream Exception!"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    .line 5
    .line 6
    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    .line 9
    :try_start_1
    invoke-static {v2}, Lcom/huawei/hms/utils/ReadApkFileUtil;->i(Ljava/util/zip/ZipFile;)[B

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->c([B)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-static {v1}, Lcom/huawei/hms/utils/ReadApkFileUtil;->h(Ljava/util/ArrayList;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    :goto_0
    const-string v1, "SHA-256"

    .line 30
    .line 31
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/huawei/hms/utils/ReadApkFileUtil;->bytesToString([B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->f:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-exception p0

    .line 61
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    const/4 p0, 0x1

    .line 86
    return p0

    .line 87
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :catch_2
    move-exception p0

    .line 92
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :goto_2
    move-object v1, v2

    .line 118
    goto :goto_3

    .line 119
    :catchall_1
    move-exception p0

    .line 120
    goto :goto_5

    .line 121
    :catch_3
    move-exception p0

    .line 122
    :goto_3
    :try_start_4
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 123
    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v4, "verifyApkHash Exception!"

    .line 130
    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-static {v2, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    .line 147
    .line 148
    if-eqz v1, :cond_2

    .line 149
    .line 150
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :catch_4
    move-exception p0

    .line 155
    sget-object v1, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 156
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_2
    :goto_4
    const/4 p0, 0x0

    .line 180
    return p0

    .line 181
    :goto_5
    move-object v2, v1

    .line 182
    :goto_6
    if-eqz v2, :cond_3

    .line 183
    .line 184
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 185
    .line 186
    .line 187
    goto :goto_7

    .line 188
    :catch_5
    move-exception v1

    .line 189
    sget-object v2, Lcom/huawei/hms/utils/ReadApkFileUtil;->a:Ljava/lang/String;

    .line 190
    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_3
    :goto_7
    throw p0
.end method
