.class Lcom/bytedance/sdk/component/so/oJ$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/so/oJ;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/component/so/oJ;

.field final synthetic oJ:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/so/oJ;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/so/oJ$1;->ZYk:Lcom/bytedance/sdk/component/so/oJ;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/component/so/oJ$1;->oJ:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/so/oJ$1;->oJ:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
