.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$4;
.super Ljava/lang/Object;
.source "TransferStatusUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/Exception;

.field final synthetic d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;ILjava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$4;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$4;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 4
    .line 5
    iput p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$4;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$4;->c:Ljava/lang/Exception;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$4;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    .line 2
    .line 3
    iget v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$4;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$4;->c:Ljava/lang/Exception;

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;->b(ILjava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
