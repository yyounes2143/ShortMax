.class public Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;
.super Ljava/lang/Object;
.source "BucketVersioningConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->b:Ljava/lang/Boolean;

    .line 6
    .line 7
    const-string v0, "Off"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->b:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/BucketVersioningConfiguration;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
