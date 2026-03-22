.class public final Lio/bidmachine/analytics/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/a$a;
    }
.end annotation


# static fields
.field public static final b:Lio/bidmachine/analytics/internal/a$a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/a;->b:Lio/bidmachine/analytics/internal/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AES"

    .line 5
    .line 6
    iput-object v0, p0, Lio/bidmachine/analytics/internal/a;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method private final a(ILjava/security/Key;[B)Ljavax/crypto/Cipher;
    .locals 2

    .line 7
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 8
    const-string p3, "AES/GCM/NoPadding"

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    .line 9
    invoke-virtual {p3, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object p3
.end method


# virtual methods
.method public a(Ljava/security/Key;[B)[B
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/f0;->a:Lio/bidmachine/analytics/internal/f0;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/f0;->a(I)[B

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2, p1, v0}, Lio/bidmachine/analytics/internal/a;->a(ILjava/security/Key;[B)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 4
    array-length p2, p1

    add-int/2addr p2, v1

    new-array p2, p2, [B

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, p2, v2, v2, v1}, Lkotlin/collections/n;->h([B[BIII)[B

    .line 6
    array-length v0, p1

    invoke-static {p1, p2, v1, v2, v0}, Lkotlin/collections/n;->h([B[BIII)[B

    return-object p2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
