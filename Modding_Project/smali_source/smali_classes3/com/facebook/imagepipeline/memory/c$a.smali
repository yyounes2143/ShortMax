.class Lcom/facebook/imagepipeline/memory/c$a;
.super Ljava/lang/Object;
.source "FlexByteArrayPool.java"

# interfaces
.implements Lo2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/memory/c;-><init>(Ln2/c;Lb4/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo2/h<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/memory/c;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/memory/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/c$a;->a:Lcom/facebook/imagepipeline/memory/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/c$a;->a:Lcom/facebook/imagepipeline/memory/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/c;->b([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/c$a;->a([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
