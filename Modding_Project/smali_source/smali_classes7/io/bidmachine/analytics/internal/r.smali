.class public final Lio/bidmachine/analytics/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/D;


# instance fields
.field private final a:Ljava/security/KeyPairGenerator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "EC"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    .line 11
    .line 12
    const-string v2, "secp256r1"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lio/bidmachine/analytics/internal/r;->a:Ljava/security/KeyPairGenerator;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public b()Ljava/security/KeyPairGenerator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/r;->a:Ljava/security/KeyPairGenerator;

    .line 2
    .line 3
    return-object v0
.end method
