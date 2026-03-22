.class public Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;
.super Ljava/lang/Object;
.source "BucketWebsiteConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/amazonaws/services/s3/model/RedirectRule;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->d:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->a:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/RoutingRule;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public f(Lcom/amazonaws/services/s3/model/RedirectRule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketWebsiteConfiguration;->c:Lcom/amazonaws/services/s3/model/RedirectRule;

    .line 2
    .line 3
    return-void
.end method
