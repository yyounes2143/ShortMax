.class Lcom/bytedance/vodsetting/Fetcher$2;
.super Ljava/util/TimerTask;
.source "Fetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vodsetting/Fetcher;->delayFetch(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vodsetting/Fetcher;

.field final synthetic val$configKey:Ljava/lang/String;

.field final synthetic val$module:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/vodsetting/Fetcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vodsetting/Fetcher$2;->this$0:Lcom/bytedance/vodsetting/Fetcher;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/vodsetting/Fetcher$2;->val$module:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/vodsetting/Fetcher$2;->val$configKey:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/vodsetting/Fetcher$2;->this$0:Lcom/bytedance/vodsetting/Fetcher;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/vodsetting/Fetcher$2;->val$module:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/vodsetting/Fetcher$2;->val$configKey:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/bytedance/vodsetting/Fetcher;->access$500(Lcom/bytedance/vodsetting/Fetcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
