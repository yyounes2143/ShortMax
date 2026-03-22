.class final Lokhttp3/internal/connection/RealConnection$connectTls$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RealConnection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/RealConnection;->i(Lokhttp3/internal/connection/ConnectionSpecSelector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lokhttp3/CertificatePinner;

.field final synthetic e:Lokhttp3/Handshake;

.field final synthetic f:Lokhttp3/Address;


# direct methods
.method constructor <init>(Lokhttp3/CertificatePinner;Lokhttp3/Handshake;Lokhttp3/Address;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->d:Lokhttp3/CertificatePinner;

    .line 2
    .line 3
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->e:Lokhttp3/Handshake;

    .line 4
    .line 5
    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->f:Lokhttp3/Address;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection$connectTls$1;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->d:Lokhttp3/CertificatePinner;

    invoke-virtual {v0}, Lokhttp3/CertificatePinner;->d()Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->e:Lokhttp3/Handshake;

    invoke-virtual {v1}, Lokhttp3/Handshake;->d()Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection$connectTls$1;->f:Lokhttp3/Address;

    invoke-virtual {v2}, Lokhttp3/Address;->l()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
