.class public final Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;
.super Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;
.source "InventoryPrefixPredicate.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/inventory/InventoryFilterPredicate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/inventory/InventoryPrefixPredicate;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method
