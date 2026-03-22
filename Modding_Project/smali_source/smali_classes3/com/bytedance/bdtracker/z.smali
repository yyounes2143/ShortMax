.class public Lcom/bytedance/bdtracker/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/encryptor/IEncryptorType;
.implements Lcom/bytedance/mpaas/IEncryptor;


# instance fields
.field public final a:Lcom/bytedance/mpaas/IEncryptor;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/mpaas/IEncryptor;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/bdtracker/z;->a:Lcom/bytedance/mpaas/IEncryptor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/bdtracker/z;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public encrypt([BI)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/z;->a:Lcom/bytedance/mpaas/IEncryptor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/bytedance/mpaas/IEncryptor;->encrypt([BI)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    return-object p1
.end method

.method public encryptorType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/z;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "a"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/z;->b:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method
