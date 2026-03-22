.class public Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;
.super Ljava/lang/Object;
.source "ListBucketInventoryConfigurationsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;


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
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->a:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/ListBucketInventoryConfigurationsResult;->c:Z

    .line 2
    .line 3
    return-void
.end method
