.class Lcom/ss/ttvideoengine/log/BrightnessMonitor$1;
.super Landroid/database/ContentObserver;
.source "BrightnessMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/log/BrightnessMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/log/BrightnessMonitor;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/log/BrightnessMonitor;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor$1;->this$0:Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/BrightnessMonitor$1;->this$0:Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->access$000(Lcom/ss/ttvideoengine/log/BrightnessMonitor;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
