.class Lcom/bytedance/vodsetting/SettingsManager$2;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vodsetting/SettingsManager;->loadLocalAndRefresh(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vodsetting/SettingsManager;

.field final synthetic val$module:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/vodsetting/SettingsManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vodsetting/SettingsManager$2;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/vodsetting/SettingsManager$2;->val$module:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager$2;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/vodsetting/SettingsManager$2;->val$module:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/bytedance/vodsetting/SettingsManager;->access$200(Lcom/bytedance/vodsetting/SettingsManager;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
