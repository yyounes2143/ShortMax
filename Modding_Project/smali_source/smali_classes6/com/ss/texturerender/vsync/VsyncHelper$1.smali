.class Lcom/ss/texturerender/vsync/VsyncHelper$1;
.super Ljava/lang/Object;
.source "VsyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/texturerender/vsync/VsyncHelper;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/texturerender/vsync/VsyncHelper;


# direct methods
.method constructor <init>(Lcom/ss/texturerender/vsync/VsyncHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper$1;->this$0:Lcom/ss/texturerender/vsync/VsyncHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper$1;->this$0:Lcom/ss/texturerender/vsync/VsyncHelper;

    .line 2
    .line 3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/ss/texturerender/vsync/VsyncHelper;->access$002(Lcom/ss/texturerender/vsync/VsyncHelper;Landroid/view/Choreographer;)Landroid/view/Choreographer;

    .line 8
    .line 9
    .line 10
    return-void
.end method
