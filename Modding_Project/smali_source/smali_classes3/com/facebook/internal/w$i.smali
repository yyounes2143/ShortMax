.class public final Lcom/facebook/internal/w$i;
.super Ljava/lang/Object;
.source "FileLruCache.kt"

# interfaces
.implements Lcom/facebook/internal/w$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/w;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/facebook/internal/w;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(JLcom/facebook/internal/w;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/internal/w$i;->a:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/facebook/internal/w$i;->b:Lcom/facebook/internal/w;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/facebook/internal/w$i;->c:Ljava/io/File;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/facebook/internal/w$i;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/facebook/internal/w$i;->a:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/facebook/internal/w$i;->b:Lcom/facebook/internal/w;

    .line 4
    .line 5
    invoke-static {v2}, Lcom/facebook/internal/w;->c(Lcom/facebook/internal/w;)Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/facebook/internal/w$i;->c:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/facebook/internal/w$i;->b:Lcom/facebook/internal/w;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/facebook/internal/w$i;->d:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/facebook/internal/w$i;->c:Ljava/io/File;

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/w;->e(Lcom/facebook/internal/w;Ljava/lang/String;Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
