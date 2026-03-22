.class final Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/factory/ISDKTypeFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->ZYk(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/Pfn/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Pfn/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$5;->oJ:Lcom/bytedance/sdk/openadsdk/Pfn/oJ;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createADTypeLoaderFactory(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/factory/IADTypeLoaderFactory;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$5;->oJ:Lcom/bytedance/sdk/openadsdk/Pfn/oJ;

    .line 2
    .line 3
    return-object p1
.end method
