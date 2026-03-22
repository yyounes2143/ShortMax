.class public Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;
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
    name = "Transition"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/Date;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public b(Ljava/util/Date;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->b:Ljava/util/Date;

    .line 2
    .line 3
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketLifecycleConfiguration$Transition;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
