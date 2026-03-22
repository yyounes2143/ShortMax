.class public Lqa/f;
.super Ljava/lang/Object;

# interfaces
.implements Lpa/d;


# instance fields
.field private final a:Lpa/c;

.field private b:Ljavax/crypto/SecretKey;

.field private c:Z


# direct methods
.method public constructor <init>(Lpa/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lqa/f;->c:Z

    .line 6
    .line 7
    iput-object p1, p0, Lqa/f;->a:Lpa/c;

    .line 8
    .line 9
    return-void
.end method

.method private b()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lqa/f;->a:Lpa/c;

    .line 3
    .line 4
    const-string v2, "/code/code1"

    .line 5
    .line 6
    invoke-interface {v1, v2, v0}, Lpa/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    iget-object v1, p0, Lqa/f;->a:Lpa/c;

    .line 11
    .line 12
    const-string v2, "/code/code2"

    .line 13
    .line 14
    invoke-interface {v1, v2, v0}, Lpa/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v1, p0, Lqa/f;->a:Lpa/c;

    .line 19
    .line 20
    const-string v2, "/code/code3"

    .line 21
    .line 22
    invoke-interface {v1, v2, v0}, Lpa/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    iget-object v1, p0, Lqa/f;->a:Lpa/c;

    .line 27
    .line 28
    const-string v2, "/code/code4"

    .line 29
    .line 30
    invoke-interface {v1, v2, v0}, Lpa/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    new-instance v1, Lqa/e;

    .line 35
    .line 36
    const-string v8, "PBKDF2WithHmacSHA1"

    .line 37
    .line 38
    const/16 v9, 0x2710

    .line 39
    .line 40
    move-object v3, v1

    .line 41
    invoke-direct/range {v3 .. v9}, Lqa/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lqa/k;->a(Lqa/e;)Ljavax/crypto/SecretKey;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lqa/f;->b:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    const-string v1, "AGC_Mark"

    .line 52
    .line 53
    const-string v2, "Exception when reading the \'K&I\' for \'Config\'."

    .line 54
    .line 55
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lqa/f;->b:Ljavax/crypto/SecretKey;

    .line 59
    .line 60
    :goto_0
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lqa/f;->c:Z

    .line 62
    .line 63
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "^\\[!([A-Fa-f0-9]*)]"

    .line 8
    .line 9
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    const-string v1, "^\\[!([A-Fa-f0-9]*)]"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p1

    .line 25
    :cond_0
    return-object v0

    .line 26
    :catch_0
    const-string p1, "AGC_Mark"

    .line 27
    .line 28
    const-string v1, "getRawString exception"

    .line 29
    .line 30
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lqa/f;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lqa/f;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lqa/f;->b:Ljavax/crypto/SecretKey;

    .line 9
    .line 10
    const-string v1, "AGC_Mark"

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string p1, "mKey is null, return default value"

    .line 15
    .line 16
    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-object p2

    .line 20
    :cond_1
    invoke-static {p1}, Lqa/f;->c(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p0, Lqa/f;->b:Ljavax/crypto/SecretKey;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lqa/f;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lqa/a;->b(Ljava/lang/String;)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v2, p1}, Lqa/k;->b(Ljavax/crypto/SecretKey;[B)[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v2, "UTF-8"

    .line 43
    .line 44
    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :catch_0
    const-string p1, "UnsupportedEncodingException||GeneralSecurityException||IllegalArgumentException"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object p2
.end method
