.class public Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;
.super Ljava/lang/Object;
.source "AVMDLCopyOperation.java"


# instance fields
.field public mCustomDir:Ljava/lang/String;

.field mDestPath:Ljava/lang/String;

.field mFileKey:Ljava/lang/String;

.field mForceCopyUnfinished:Z

.field public final mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mWaitIfCaching:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;)V
    .locals 0
    .param p3    # Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mDestPath:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mCustomDir:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mWaitIfCaching:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;)V
    .locals 0
    .param p4    # Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mDestPath:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mCustomDir:Ljava/lang/String;

    .line 12
    iput-boolean p3, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mWaitIfCaching:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;)V
    .locals 0
    .param p5    # Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mDestPath:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mCustomDir:Ljava/lang/String;

    .line 18
    iput-boolean p4, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mWaitIfCaching:Z

    .line 19
    iput-boolean p3, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mForceCopyUnfinished:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mWaitIfCaching:Z

    :cond_0
    return-void
.end method
