.class public Lcom/ss/texturerender/vsync/VsyncHelper$VsyncCallback;
.super Ljava/lang/Object;
.source "VsyncHelper.java"

# interfaces
.implements Lcom/ss/texturerender/vsync/IVsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/vsync/VsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VsyncCallback"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/ss/texturerender/vsync/VsyncHelper$VsyncCallback;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public notifyVsync()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/vsync/VsyncHelper$VsyncCallback;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
