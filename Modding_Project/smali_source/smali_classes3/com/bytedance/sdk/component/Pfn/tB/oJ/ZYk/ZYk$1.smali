.class Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ZYk$1;
.super Lcom/bytedance/sdk/component/Pfn/tB/oJ/tB;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ZYk;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/Pfn/tB/oJ/tB<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ZYk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ZYk;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ZYk$1;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ZYk;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/tB;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected synthetic ZYk(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Landroid/graphics/Bitmap;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ZYk$1;->oJ(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method protected oJ(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ZYk;->oJ(Landroid/graphics/Bitmap;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
