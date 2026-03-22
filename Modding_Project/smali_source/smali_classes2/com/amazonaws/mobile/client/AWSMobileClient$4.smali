.class Lcom/amazonaws/mobile/client/AWSMobileClient$4;
.super Ljava/lang/Object;
.source "AWSMobileClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/AWSMobileClient;->H(Lcom/amazonaws/mobile/client/UserStateDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobile/client/UserStateListener;

.field final synthetic b:Lcom/amazonaws/mobile/client/UserStateDetails;

.field final synthetic c:Lcom/amazonaws/mobile/client/AWSMobileClient;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/AWSMobileClient;Lcom/amazonaws/mobile/client/UserStateListener;Lcom/amazonaws/mobile/client/UserStateDetails;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$4;->c:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$4;->a:Lcom/amazonaws/mobile/client/UserStateListener;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$4;->b:Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$4;->a:Lcom/amazonaws/mobile/client/UserStateListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobile/client/AWSMobileClient$4;->b:Lcom/amazonaws/mobile/client/UserStateDetails;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/amazonaws/mobile/client/UserStateListener;->a(Lcom/amazonaws/mobile/client/UserStateDetails;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
