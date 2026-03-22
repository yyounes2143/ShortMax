.class public Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;
.super Ljava/lang/Object;
.source "InventoryConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

.field private c:Ljava/lang/Boolean;

.field private d:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;


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
.method public b(Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->b:Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public g(Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->d:Lcom/amazonaws/services/s3/model/inventory/InventoryFilter;

    .line 2
    .line 3
    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->f:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public i(Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryConfiguration;->g:Lcom/amazonaws/services/s3/model/inventory/InventorySchedule;

    .line 2
    .line 3
    return-void
.end method
