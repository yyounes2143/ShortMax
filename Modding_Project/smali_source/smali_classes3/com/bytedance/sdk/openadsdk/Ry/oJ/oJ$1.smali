.class Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/so;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ;Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/cY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ;

.field final synthetic oJ:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$1;->ZYk:Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$1;->oJ:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$1;->oJ:I

    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/ex/oJ;->oJ(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
