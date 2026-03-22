.class public Lqa/g;
.super Ljava/lang/Object;

# interfaces
.implements Lpa/d;


# instance fields
.field private a:Ljavax/crypto/SecretKey;

.field private final b:Lqa/e;

.field private c:Z


# direct methods
.method public constructor <init>(Lqa/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lqa/g;->c:Z

    .line 6
    .line 7
    iput-object p1, p0, Lqa/g;->b:Lqa/e;

    .line 8
    .line 9
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lqa/g;->b:Lqa/e;

    .line 2
    .line 3
    invoke-static {v0}, Lqa/k;->a(Lqa/e;)Ljavax/crypto/SecretKey;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lqa/g;->a:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const-string v0, "AGC_LocalResource"

    .line 11
    .line 12
    const-string v1, "Exception when reading the \'K&I\' for \'Config\'."

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lqa/g;->a:Ljavax/crypto/SecretKey;

    .line 19
    .line 20
    :goto_0
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lqa/g;->c:Z

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lqa/g;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lqa/g;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lqa/g;->a:Ljavax/crypto/SecretKey;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lqa/g;->a:Ljavax/crypto/SecretKey;

    .line 22
    .line 23
    invoke-static {p1}, Lqa/a;->b(Ljava/lang/String;)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v1, p1}, Lqa/k;->b(Ljavax/crypto/SecretKey;[B)[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "UTF-8"

    .line 32
    .line 33
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_0

    .line 39
    :catch_1
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :catch_2
    move-exception p1

    .line 42
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "decrypt exception:"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "AGC_LocalResource"

    .line 64
    .line 65
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_1
    return-object p2
.end method
