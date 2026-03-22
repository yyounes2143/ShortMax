.class Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/tB/so;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ;

.field final synthetic oJ:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ$1;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ$1;->oJ:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ$1;->oJ:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const v1, 0x7d06fffa

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ$1;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ;

    .line 11
    .line 12
    new-instance v2, Ljava/lang/ref/SoftReference;

    .line 13
    .line 14
    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ;->oJ(Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ/cFZ;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    .line 18
    .line 19
    .line 20
    return-void
.end method
