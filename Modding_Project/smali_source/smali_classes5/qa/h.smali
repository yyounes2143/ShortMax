.class public Lqa/h;
.super Ljava/lang/Object;

# interfaces
.implements Lpa/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Lpa/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AGC_FixedDecrypt"

    .line 5
    .line 6
    const-string v1, "init"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lqa/h;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lqa/h;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lqa/h;->c:Lpa/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lqa/h;->b()Lpa/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lqa/h;->c:Lpa/d;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lqa/h;->c:Lpa/d;

    .line 12
    .line 13
    iget-object v1, p0, Lqa/h;->a:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v2, p0, Lqa/h;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "agc_"

    .line 18
    .line 19
    invoke-static {v1, v2, v3, p1}, Lqa/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1, p2}, Lpa/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public b()Lpa/d;
    .locals 11

    .line 1
    iget-object v0, p0, Lqa/h;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lqa/h;->b:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "/AD91D45E3E72DB6989DDCB13287E75061FABCB933D886E6C6ABEF0939B577138"

    .line 6
    .line 7
    const-string v3, "agc_"

    .line 8
    .line 9
    invoke-static {v0, v1, v3, v2}, Lqa/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    iget-object v0, p0, Lqa/h;->a:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v1, p0, Lqa/h;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "/B314B3BF013DF5AC4134E880AF3D2B7C9FFBE8F0305EAC1C898145E2BCF1F21C"

    .line 18
    .line 19
    invoke-static {v0, v1, v3, v2}, Lqa/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iget-object v0, p0, Lqa/h;->a:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v1, p0, Lqa/h;->b:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "/C767BD8FDF53E53D059BE95B09E2A71056F5F180AECC62836B287ACA5793421B"

    .line 28
    .line 29
    invoke-static {v0, v1, v3, v2}, Lqa/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    iget-object v0, p0, Lqa/h;->a:Landroid/content/Context;

    .line 34
    .line 35
    iget-object v1, p0, Lqa/h;->b:Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "/DCB3E6D4C2CF80F30D89CDBC412C964DA8381BB84668769391FBCC3E329AD0FD"

    .line 38
    .line 39
    invoke-static {v0, v1, v3, v2}, Lqa/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    new-instance v0, Lqa/e;

    .line 44
    .line 45
    const-string v9, "PBKDF2WithHmacSHA1"

    .line 46
    .line 47
    const/16 v10, 0x1388

    .line 48
    .line 49
    move-object v4, v0

    .line 50
    invoke-direct/range {v4 .. v10}, Lqa/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lqa/g;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lqa/g;-><init>(Lqa/e;)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method
