.class public Lcom/ss/ttvideoengine/TTVideoEngineLooperThread;
.super Ljava/lang/Object;
.source "TTVideoEngineLooperThread.java"


# static fields
.field public static final INJECT_MSG_THREAD_NOTALLOW_DESTROY:I = 0x0

.field private static final PARAM_COND:Ljava/lang/String; = "msgCond"

.field private static final PARAM_OBJ:Ljava/lang/String; = "paramObj"

.field private static final PARAM_OBJ1:Ljava/lang/String; = "paramObj1"

.field private static final PARAM_OBJ2:Ljava/lang/String; = "paramObj2"

.field private static final TAG:Ljava/lang/String; = "TTVideoEngineLooperThread"

.field static final TIMEOUT_MSG_DEFAULT:J = 0x1f4L

.field static final TIMEOUT_MSG_NO_LIMIT:J = -0x1L


# instance fields
.field private mCondList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/locks/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mEngine:Lcom/ss/ttvideoengine/TTVideoEngine;

.field private mEngineMsgHandler:Landroid/os/Handler;

.field private mEngineMsgLock:Ljava/util/concurrent/locks/Lock;

.field mEngineMsgRetValue:Landroid/os/Parcel;

.field mInjectedMsgNotAllowDestroy:Z

.field mInjectedMsgThread:Z

.field private mIsHandlingMainMsg:Z

.field private mMainLooperHandler:Landroid/os/Handler;

.field private mMainMsgLock:Ljava/util/concurrent/locks/Lock;

.field mMainMsgRetValue:Landroid/os/Parcel;

.field private mMessageThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineLooperThread;->mEngineMsgHandler:Landroid/os/Handler;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineLooperThread;->mMainLooperHandler:Landroid/os/Handler;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineLooperThread;->mIsHandlingMainMsg:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineLooperThread;->mInjectedMsgThread:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineLooperThread;->mInjectedMsgNotAllowDestroy:Z

    .line 15
    .line 16
    return-void
.end method
