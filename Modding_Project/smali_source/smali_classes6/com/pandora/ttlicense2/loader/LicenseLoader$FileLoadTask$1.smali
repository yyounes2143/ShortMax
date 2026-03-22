.class Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask$1;
.super Ljava/lang/Object;
.source "LicenseLoader.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/DiskCache$Writer$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;->loadWithRetryPolicy(Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;

.field final synthetic val$notifier:Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask$1;->this$0:Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask$1;->val$notifier:Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public update(JJZ)V
    .locals 0

    .line 1
    iget-object p5, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$FileLoadTask$1;->val$notifier:Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    long-to-float p1, p1

    .line 6
    long-to-float p2, p3

    .line 7
    div-float/2addr p1, p2

    .line 8
    invoke-interface {p5, p1}, Lcom/pandora/ttlicense2/loader/Loader$ProgressNotifier;->notifyProgressChanged(F)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
