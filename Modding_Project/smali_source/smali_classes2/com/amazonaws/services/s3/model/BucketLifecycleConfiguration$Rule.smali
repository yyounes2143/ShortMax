.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
.super Ljava/lang/Object;
.source "BucketLifecycleConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

.field private e:I

.field private f:Z

.field private g:I

.field private h:Ljava/util/Date;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->e:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->f:Z

    .line 9
    .line 10
    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->g:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$NoncurrentVersionTransition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->j:Ljava/util/List;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->j:Ljava/util/List;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->j:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "NoncurrentVersionTransition cannot be null."

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public d(Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;)Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->i:Ljava/util/List;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->i:Ljava/util/List;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->i:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "Transition cannot be null."

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public e(Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->k:Lcom/amazonaws/services/s3/model/AbortIncompleteMultipartUpload;

    .line 2
    .line 3
    return-void
.end method

.method public f(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->h:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public i(Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->d:Lcom/amazonaws/services/s3/model/lifecycle/LifecycleFilter;

    .line 2
    .line 3
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Rule;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
