.class public Lhb/p0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lhb/p0;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Ljava/lang/String;I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v1, p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0}, Lmb/b;->b(Ljava/lang/String;)[B

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Landroid/util/Pair;

    .line 24
    .line 25
    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    :goto_0
    new-instance p1, Landroid/util/Pair;

    .line 30
    .line 31
    new-array v0, v0, [B

    .line 32
    .line 33
    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object p1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-static {p0, v0}, Lhb/p0;->a(Ljava/lang/String;I)Landroid/util/Pair;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Lmb/b;->b(Ljava/lang/String;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1}, Lmb/b;->b(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, [B

    .line 22
    .line 23
    invoke-static {v0, p1, p0}, Ljb/a;->b([B[B[B)[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance p1, Ljava/lang/String;

    .line 28
    .line 29
    sget-object v0, Lhb/p0;->a:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public static c([BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "AesCipher"

    .line 4
    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    array-length v2, p0

    .line 8
    if-eqz v2, :cond_2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-static {p1}, Lmb/b;->b(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    array-length v2, p1

    .line 18
    const/16 v3, 0x10

    .line 19
    .line 20
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    const-string p0, "key length is not right"

    .line 23
    .line 24
    :goto_0
    invoke-static {v1, p0}, Lhb/f1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-static {p0, p1}, Ljb/b;->b([B[B)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lmb/b;->a([B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_2
    :goto_1
    const-string p0, "cbc encrypt(byte) param is not right"

    .line 38
    .line 39
    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lhb/p0;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Lmb/b;->b(Ljava/lang/String;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Ljb/a;->c([B[B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lmb/b;->a([B)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method
