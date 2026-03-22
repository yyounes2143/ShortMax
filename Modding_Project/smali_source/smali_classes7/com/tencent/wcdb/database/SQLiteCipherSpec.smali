.class public Lcom/tencent/wcdb/database/SQLiteCipherSpec;
.super Ljava/lang/Object;
.source "SQLiteCipherSpec.java"


# static fields
.field public static final CIPHER_AES256CBC:Ljava/lang/String; = "aes-256-cbc"

.field public static final CIPHER_DEVLOCK:Ljava/lang/String; = "devlock"

.field public static final CIPHER_XXTEA:Ljava/lang/String; = "xxtea"


# instance fields
.field public cipher:Ljava/lang/String;

.field public hmacEnabled:Z

.field public kdfIteration:I

.field public pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->hmacEnabled:Z

    .line 3
    sget v0, Lcom/tencent/wcdb/database/SQLiteGlobal;->defaultPageSize:I

    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->pageSize:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteCipherSpec;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->hmacEnabled:Z

    .line 6
    sget v0, Lcom/tencent/wcdb/database/SQLiteGlobal;->defaultPageSize:I

    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->pageSize:I

    .line 7
    iget-object v0, p1, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->cipher:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->cipher:Ljava/lang/String;

    .line 8
    iget v0, p1, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->kdfIteration:I

    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->kdfIteration:I

    .line 9
    iget-boolean v0, p1, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->hmacEnabled:Z

    iput-boolean v0, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->hmacEnabled:Z

    .line 10
    iget p1, p1, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->pageSize:I

    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->pageSize:I

    return-void
.end method


# virtual methods
.method public setCipher(Ljava/lang/String;)Lcom/tencent/wcdb/database/SQLiteCipherSpec;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->cipher:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setKDFIteration(I)Lcom/tencent/wcdb/database/SQLiteCipherSpec;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->kdfIteration:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setPageSize(I)Lcom/tencent/wcdb/database/SQLiteCipherSpec;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->pageSize:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSQLCipherVersion(I)Lcom/tencent/wcdb/database/SQLiteCipherSpec;
    .locals 3

    .line 1
    const/16 v0, 0xfa0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v1, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->hmacEnabled:Z

    .line 13
    .line 14
    const p1, 0xfa00

    .line 15
    .line 16
    .line 17
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->kdfIteration:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "Unsupported SQLCipher version: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    iput-boolean v1, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->hmacEnabled:Z

    .line 44
    .line 45
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->kdfIteration:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->hmacEnabled:Z

    .line 50
    .line 51
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->kdfIteration:I

    .line 52
    .line 53
    :goto_0
    return-object p0
.end method

.method public withHMACEnabled(Z)Lcom/tencent/wcdb/database/SQLiteCipherSpec;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/wcdb/database/SQLiteCipherSpec;->hmacEnabled:Z

    .line 2
    .line 3
    return-object p0
.end method
