.class public Lcom/bytedance/sdk/openadsdk/component/tB$ZYk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/si$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZYk"
.end annotation


# instance fields
.field private final oJ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/component/tB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/tB;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB$ZYk;->oJ:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/tB$ZYk;->oJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/tB;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;->ZYk()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;->oJ()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/tB;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
