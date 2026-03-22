.class public final Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;
.super Ljava/lang/Object;
.source "ConnectionSpec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/shadow/okhttp3/ConnectionSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConnectionSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,350:1\n1#2:351\n11065#3:352\n11400#3,3:353\n11065#3:358\n11400#3,3:359\n37#4,2:356\n37#4,2:362\n*S KotlinDebug\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n*L\n225#1:352\n225#1:353,3\n244#1:358\n244#1:359,3\n225#1:356,2\n244#1:362,2\n*E\n"
    }
.end annotation


# instance fields
.field private cipherSuites:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private supportsTlsExtensions:Z

.field private tls:Z

.field private tlsVersions:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/shadow/okhttp3/ConnectionSpec;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/ConnectionSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connectionSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/ConnectionSpec;->isTls()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 5
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/ConnectionSpec;->access$getCipherSuitesAsString$p(Lcom/applovin/shadow/okhttp3/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/applovin/shadow/okhttp3/ConnectionSpec;->access$getTlsVersionsAsString$p(Lcom/applovin/shadow/okhttp3/ConnectionSpec;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    return-void
.end method


# virtual methods
.method public final allEnabledCipherSuites()Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v1, "no cipher suites for cleartext connections"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public final allEnabledTlsVersions()Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v1, "no TLS versions for cleartext connections"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public final build()Lcom/applovin/shadow/okhttp3/ConnectionSpec;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/applovin/shadow/okhttp3/ConnectionSpec;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/shadow/okhttp3/ConnectionSpec;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final varargs cipherSuites([Lcom/applovin/shadow/okhttp3/CipherSuite;)Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;
    .locals 5
    .param p1    # [Lcom/applovin/shadow/okhttp3/CipherSuite;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cipherSuites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 4
    invoke-virtual {v4}, Lcom/applovin/shadow/okhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, [Ljava/lang/String;

    .line 8
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->cipherSuites([Ljava/lang/String;)Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs cipherSuites([Ljava/lang/String;)Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cipherSuites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_2

    .line 11
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    return-object p0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getCipherSuites$okhttp()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSupportsTlsExtensions$okhttp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTls$okhttp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTlsVersions$okhttp()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCipherSuites$okhttp([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->cipherSuites:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSupportsTlsExtensions$okhttp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTls$okhttp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTlsVersions$okhttp([Ljava/lang/String;)V
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final supportsTlsExtensions(Z)Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;
    .locals 1
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->supportsTlsExtensions:Z

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "no TLS extensions for cleartext connections"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public final varargs tlsVersions([Lcom/applovin/shadow/okhttp3/TlsVersion;)Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;
    .locals 5
    .param p1    # [Lcom/applovin/shadow/okhttp3/TlsVersion;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "tlsVersions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 4
    invoke-virtual {v4}, Lcom/applovin/shadow/okhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 7
    check-cast p1, [Ljava/lang/String;

    .line 8
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tlsVersions([Ljava/lang/String;)Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs tlsVersions([Ljava/lang/String;)Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "tlsVersions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tls:Z

    if-eqz v0, :cond_2

    .line 11
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/ConnectionSpec$Builder;->tlsVersions:[Ljava/lang/String;

    return-object p0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
