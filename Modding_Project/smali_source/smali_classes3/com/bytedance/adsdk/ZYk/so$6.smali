.class final Lcom/bytedance/adsdk/ZYk/so$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ZYk/so;->oJ(Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/ZYk/PiB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/bytedance/adsdk/ZYk/BTZ<",
        "Lcom/bytedance/adsdk/ZYk/cFZ;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic ZYk:Ljava/lang/String;

.field final synthetic oJ:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/so$6;->oJ:Ljava/io/InputStream;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/adsdk/ZYk/so$6;->ZYk:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/so$6;->oJ()Lcom/bytedance/adsdk/ZYk/BTZ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public oJ()Lcom/bytedance/adsdk/ZYk/BTZ;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/ZYk/BTZ<",
            "Lcom/bytedance/adsdk/ZYk/cFZ;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/so$6;->oJ:Ljava/io/InputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/so$6;->ZYk:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/adsdk/ZYk/so;->ZYk(Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/ZYk/BTZ;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
