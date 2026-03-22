.class final Lcom/bytedance/sdk/openadsdk/utils/IUZ$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/IUZ;->ex(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/component/so/cFZ;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/so/cFZ;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/IUZ$1;->oJ:Lcom/bytedance/sdk/component/so/cFZ;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/IUZ$1;->oJ:Lcom/bytedance/sdk/component/so/cFZ;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
