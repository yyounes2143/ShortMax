.class public Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;
.super Ljava/lang/RuntimeException;
.source "OAuth2Exception.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
