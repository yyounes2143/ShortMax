.class final Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerJellyBean;
.super Ljava/lang/Object;
.source "X509Util.java"

# interfaces
.implements Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerImplementation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/mediakit/vcnlib/X509Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "X509TrustManagerJellyBean"
.end annotation


# instance fields
.field private final mTrustManagerExtensions:Landroid/net/http/X509TrustManagerExtensions;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/net/http/X509TrustManagerExtensions;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/net/http/X509TrustManagerExtensions;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerJellyBean;->mTrustManagerExtensions:Landroid/net/http/X509TrustManagerExtensions;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/vcnlib/X509Util$X509TrustManagerJellyBean;->mTrustManagerExtensions:Landroid/net/http/X509TrustManagerExtensions;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/X509TrustManagerExtensions;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
