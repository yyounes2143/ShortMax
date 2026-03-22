.class abstract Lcom/amazonaws/services/s3/model/lifecycle/LifecycleNAryOperator;
.super Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;
.source "LifecycleNAryOperator.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilterPredicate;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/lifecycle/LifecycleNAryOperator;->a:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method
