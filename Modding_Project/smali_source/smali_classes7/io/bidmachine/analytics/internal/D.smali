.class public interface abstract Lio/bidmachine/analytics/internal/D;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a()Ljava/security/KeyPair;
    .locals 1

    .line 1
    invoke-interface {p0}, Lio/bidmachine/analytics/internal/D;->b()Ljava/security/KeyPairGenerator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public abstract b()Ljava/security/KeyPairGenerator;
.end method
