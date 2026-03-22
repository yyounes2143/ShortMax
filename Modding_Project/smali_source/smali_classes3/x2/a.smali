.class public Lx2/a;
.super La4/a;
.source "ImagePerfRequestListener.java"


# instance fields
.field private final a:Lq2/b;

.field private final b:Lcom/facebook/fresco/ui/common/ImagePerfState;


# direct methods
.method public constructor <init>(Lq2/b;Lcom/facebook/fresco/ui/common/ImagePerfState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La4/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx2/a;->a:Lq2/b;

    .line 5
    .line 6
    iput-object p2, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 2
    .line 3
    iget-object v1, p0, Lx2/a;->a:Lq2/b;

    .line 4
    .line 5
    invoke-interface {v1}, Lq2/b;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageRequestEndTimeMs(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageRequest(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setRequestId(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setPrefetch(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public e(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 2
    .line 3
    iget-object v1, p0, Lx2/a;->a:Lq2/b;

    .line 4
    .line 5
    invoke-interface {v1}, Lq2/b;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageRequestStartTimeMs(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageRequest(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setCallerContext(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 23
    .line 24
    invoke-virtual {p1, p3}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setRequestId(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 28
    .line 29
    invoke-virtual {p1, p4}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setPrefetch(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public j(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 2

    .line 1
    iget-object p3, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 2
    .line 3
    iget-object v0, p0, Lx2/a;->a:Lq2/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lq2/b;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p3, v0, v1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageRequestEndTimeMs(J)V

    .line 10
    .line 11
    .line 12
    iget-object p3, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageRequest(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setRequestId(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 23
    .line 24
    invoke-virtual {p1, p4}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setPrefetch(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 2
    .line 3
    iget-object v1, p0, Lx2/a;->a:Lq2/b;

    .line 4
    .line 5
    invoke-interface {v1}, Lq2/b;->now()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setImageRequestEndTimeMs(J)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lx2/a;->b:Lcom/facebook/fresco/ui/common/ImagePerfState;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/facebook/fresco/ui/common/ImagePerfState;->setRequestId(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
