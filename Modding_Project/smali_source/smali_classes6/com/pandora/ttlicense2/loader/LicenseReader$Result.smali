.class public Lcom/pandora/ttlicense2/loader/LicenseReader$Result;
.super Ljava/lang/Object;
.source "LicenseReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/LicenseReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final hintCache:Z

.field public final licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

.field public final request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;


# direct methods
.method public constructor <init>(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/LicenseFile;Z)V
    .locals 0
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/LicenseFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->hintCache:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Result{hintCache="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->hintCache:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", request="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->request:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", licenseFile="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x7d

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
