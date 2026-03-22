.class public Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;
.super Ljava/lang/Object;
.source "InventoryDestination.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;


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
.method public b(Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryDestination;->a:Lcom/amazonaws/services/s3/model/inventory/InventoryS3BucketDestination;

    .line 2
    .line 3
    return-void
.end method
