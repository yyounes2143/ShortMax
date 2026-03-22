.class final Lcom/bytedance/adsdk/ZYk/so$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ZYk/so;->oJ(Landroid/content/Context;ILjava/lang/String;)Lcom/bytedance/adsdk/ZYk/PiB;
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
.field final synthetic ZYk:Landroid/content/Context;

.field final synthetic ex:Ljava/lang/String;

.field final synthetic oJ:Ljava/lang/ref/WeakReference;

.field final synthetic tB:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/so$5;->oJ:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/adsdk/ZYk/so$5;->ZYk:Landroid/content/Context;

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/adsdk/ZYk/so$5;->tB:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/adsdk/ZYk/so$5;->ex:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/so$5;->oJ()Lcom/bytedance/adsdk/ZYk/BTZ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public oJ()Lcom/bytedance/adsdk/ZYk/BTZ;
    .locals 3
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
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/so$5;->oJ:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/so$5;->ZYk:Landroid/content/Context;

    .line 13
    .line 14
    :goto_0
    iget v1, p0, Lcom/bytedance/adsdk/ZYk/so$5;->tB:I

    .line 15
    .line 16
    iget-object v2, p0, Lcom/bytedance/adsdk/ZYk/so$5;->ex:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcom/bytedance/adsdk/ZYk/so;->ZYk(Landroid/content/Context;ILjava/lang/String;)Lcom/bytedance/adsdk/ZYk/BTZ;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
