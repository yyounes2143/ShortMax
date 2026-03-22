.class Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

.field final synthetic b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient$2;Lcom/amazonaws/mobile/auth/core/IdentityManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->b:Lcom/amazonaws/mobile/client/AWSMobileClient$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$2$1;->a:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
