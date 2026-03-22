.class final Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;
.super Ljava/lang/Object;
.source "RequestXmlFactory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->a(Ljava/util/List;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazonaws/services/s3/model/PartETag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/services/s3/model/PartETag;Lcom/amazonaws/services/s3/model/PartETag;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PartETag;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/PartETag;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PartETag;->b()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/PartETag;->b()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-le p1, p2, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 p1, 0x0

    .line 26
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/amazonaws/services/s3/model/PartETag;

    .line 2
    .line 3
    check-cast p2, Lcom/amazonaws/services/s3/model/PartETag;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory$1;->a(Lcom/amazonaws/services/s3/model/PartETag;Lcom/amazonaws/services/s3/model/PartETag;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
