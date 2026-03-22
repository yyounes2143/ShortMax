.class final Lokhttp3/CertificatePinner$check$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CertificatePinner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/CertificatePinner;->a(Ljava/lang/String;Ljava/util/List;)V
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
        "Ljava/security/cert/X509Certificate;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCertificatePinner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner$check$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,370:1\n1549#2:371\n1620#2,3:372\n*S KotlinDebug\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner$check$1\n*L\n152#1:371\n152#1:372,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic d:Lokhttp3/CertificatePinner;

.field final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lokhttp3/CertificatePinner;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/CertificatePinner;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lokhttp3/CertificatePinner$check$1;->d:Lokhttp3/CertificatePinner;

    .line 2
    .line 3
    iput-object p2, p0, Lokhttp3/CertificatePinner$check$1;->e:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lokhttp3/CertificatePinner$check$1;->f:Ljava/lang/String;

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
    invoke-virtual {p0}, Lokhttp3/CertificatePinner$check$1;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lokhttp3/CertificatePinner$check$1;->d:Lokhttp3/CertificatePinner;

    invoke-virtual {v0}, Lokhttp3/CertificatePinner;->d()Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lokhttp3/CertificatePinner$check$1;->e:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/CertificatePinner$check$1;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/tls/CertificateChainCleaner;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lokhttp3/CertificatePinner$check$1;->e:Ljava/util/List;

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/security/cert/Certificate;

    .line 6
    const-string v3, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
