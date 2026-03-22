.class Lcom/huawei/hms/adapter/CoreBaseRequest;
.super Ljava/lang/Object;
.source "CoreBaseRequest.java"

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

.field private c:Landroid/os/Parcelable;
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
.method public getJsonHeader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getJsonObject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParcelable()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->c:Landroid/os/Parcelable;

    .line 2
    .line 3
    return-object v0
.end method

.method public setJsonHeader(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setJsonObject(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setParcelable(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->c:Landroid/os/Parcelable;

    .line 2
    .line 3
    return-void
.end method
