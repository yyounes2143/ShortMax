.class public Lcom/amazonaws/services/s3/model/HeadBucketRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "HeadBucketRequest.java"


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/HeadBucketRequest;->f:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method
