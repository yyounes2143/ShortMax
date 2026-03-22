.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;
.super Ljava/lang/Object;
.source "TransferObserver.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TransferStatusListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 7
    .line 8
    invoke-static {p1, p4, p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->c(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(ILjava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 4
    .line 5
    .line 6
    return-void
.end method
