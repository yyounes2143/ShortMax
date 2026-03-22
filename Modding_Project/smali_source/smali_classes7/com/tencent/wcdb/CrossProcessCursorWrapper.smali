.class public Lcom/tencent/wcdb/CrossProcessCursorWrapper;
.super Lcom/tencent/wcdb/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Lcom/tencent/wcdb/CrossProcessCursor;


# direct methods
.method public constructor <init>(Lcom/tencent/wcdb/Cursor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/CursorWrapper;-><init>(Lcom/tencent/wcdb/Cursor;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public fillWindow(ILcom/tencent/wcdb/CursorWindow;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/tencent/wcdb/CrossProcessCursor;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/tencent/wcdb/CrossProcessCursor;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/tencent/wcdb/CrossProcessCursor;->fillWindow(ILcom/tencent/wcdb/CursorWindow;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/tencent/wcdb/DatabaseUtils;->cursorFillWindow(Lcom/tencent/wcdb/Cursor;ILcom/tencent/wcdb/CursorWindow;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public getWindow()Lcom/tencent/wcdb/CursorWindow;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/tencent/wcdb/CrossProcessCursor;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/tencent/wcdb/CrossProcessCursor;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/tencent/wcdb/CrossProcessCursor;->getWindow()Lcom/tencent/wcdb/CursorWindow;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public onMove(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/tencent/wcdb/CrossProcessCursor;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/tencent/wcdb/CrossProcessCursor;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/tencent/wcdb/CrossProcessCursor;->onMove(II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    return p1
.end method
