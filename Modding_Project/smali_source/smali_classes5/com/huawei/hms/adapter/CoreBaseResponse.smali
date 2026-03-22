.class public Lcom/huawei/hms/adapter/CoreBaseResponse;
.super Ljava/lang/Object;
.source "CoreBaseResponse.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/e;


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lwa/a;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lwa/a;
    .end annotation
.end field

.field public intent:Landroid/content/Intent;
    .annotation runtime Lwa/a;
    .end annotation
.end field

.field public pendingIntent:Landroid/app/PendingIntent;
    .annotation runtime Lwa/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->intent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJsonBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJsonHeader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->pendingIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->intent:Landroid/content/Intent;

    .line 2
    .line 3
    return-void
.end method

.method public setJsonBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJsonHeader(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseResponse;->pendingIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-void
.end method
