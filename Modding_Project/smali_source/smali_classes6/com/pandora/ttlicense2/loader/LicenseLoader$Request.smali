.class public Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
.super Ljava/lang/Object;
.source "LicenseLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/LicenseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public final backupUri:Ljava/lang/String;

.field public final cacheKey:Ljava/lang/String;

.field public final ignoreCache:Z

.field public final retryPolicy:Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;

.field public final tag:Ljava/lang/Object;

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->ignoreCache:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->uri:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->backupUri:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->retryPolicy:Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->tag:Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Request{cacheKey=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->cacheKey:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", url=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->uri:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", backupUri=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->backupUri:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x7d

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
