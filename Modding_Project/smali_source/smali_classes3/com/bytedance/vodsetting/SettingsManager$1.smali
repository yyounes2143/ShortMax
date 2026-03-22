.class Lcom/bytedance/vodsetting/SettingsManager$1;
.super Ljava/lang/Object;
.source "SettingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/vodsetting/SettingsManager;->loadLocal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/vodsetting/SettingsManager;

.field final synthetic val$modules:I


# direct methods
.method constructor <init>(Lcom/bytedance/vodsetting/SettingsManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/vodsetting/SettingsManager$1;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/vodsetting/SettingsManager$1;->val$modules:I

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
    iget v0, p0, Lcom/bytedance/vodsetting/SettingsManager$1;->val$modules:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/vodsetting/SettingsManager$1;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    .line 8
    .line 9
    const-string v1, "common"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/bytedance/vodsetting/SettingsManager;->access$000(Lcom/bytedance/vodsetting/SettingsManager;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/bytedance/vodsetting/SettingsManager$1;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/bytedance/vodsetting/SettingsManager;->access$100(Lcom/bytedance/vodsetting/SettingsManager;)[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    array-length v1, v1

    .line 22
    if-ge v0, v1, :cond_2

    .line 23
    .line 24
    iget v1, p0, Lcom/bytedance/vodsetting/SettingsManager$1;->val$modules:I

    .line 25
    .line 26
    iget-object v2, p0, Lcom/bytedance/vodsetting/SettingsManager$1;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/bytedance/vodsetting/SettingsManager;->access$100(Lcom/bytedance/vodsetting/SettingsManager;)[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    aget-object v2, v2, v0

    .line 33
    .line 34
    iget v2, v2, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->intValue:I

    .line 35
    .line 36
    and-int/2addr v1, v2

    .line 37
    if-lez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/bytedance/vodsetting/SettingsManager$1;->this$0:Lcom/bytedance/vodsetting/SettingsManager;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/bytedance/vodsetting/SettingsManager;->access$100(Lcom/bytedance/vodsetting/SettingsManager;)[Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    aget-object v2, v2, v0

    .line 46
    .line 47
    iget-object v2, v2, Lcom/bytedance/vodsetting/SettingsManager$ModuleItem;->stringValue:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1, v2}, Lcom/bytedance/vodsetting/SettingsManager;->access$000(Lcom/bytedance/vodsetting/SettingsManager;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method
