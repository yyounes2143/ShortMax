.class Lcom/tencent/wcdb/MergeCursor$1;
.super Landroid/database/DataSetObserver;
.source "MergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wcdb/MergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wcdb/MergeCursor;


# direct methods
.method constructor <init>(Lcom/tencent/wcdb/MergeCursor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/MergeCursor$1;->this$0:Lcom/tencent/wcdb/MergeCursor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/MergeCursor$1;->this$0:Lcom/tencent/wcdb/MergeCursor;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iput v1, v0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 5
    .line 6
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/MergeCursor$1;->this$0:Lcom/tencent/wcdb/MergeCursor;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iput v1, v0, Lcom/tencent/wcdb/AbstractCursor;->mPos:I

    .line 5
    .line 6
    return-void
.end method
