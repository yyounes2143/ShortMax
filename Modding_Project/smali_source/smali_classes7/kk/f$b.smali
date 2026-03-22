.class public final Lkk/f$b;
.super Lyd/b;
.source "FrescoUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkk/f;->k(Lcom/facebook/imagepipeline/request/ImageRequest;Lf3/a;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lf3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/request/ImageRequest;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkk/f$b;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    invoke-direct {p0}, Lyd/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "showImage failed -> url("

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lkk/f$b;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ") reason("

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    const-string p2, "null"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 p2, 0x29

    .line 40
    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Lkk/f;->f(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
