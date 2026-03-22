.class public Lcom/tencent/wcdb/CursorWrapper;
.super Ljava/lang/Object;
.source "CursorWrapper.java"

# interfaces
.implements Lcom/tencent/wcdb/Cursor;


# instance fields
.field protected final mCursor:Lcom/tencent/wcdb/Cursor;


# direct methods
.method public constructor <init>(Lcom/tencent/wcdb/Cursor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/tencent/wcdb/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->deactivate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->getBlob(I)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->getColumnCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->getColumnName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->getCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->getDouble(I)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->getExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->getFloat(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->getLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->getPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->getShort(I)S

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->getType(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->getWantsAllOnMoveCalls()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getWrappedCursor()Lcom/tencent/wcdb/Cursor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAfterLast()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->isAfterLast()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->isBeforeFirst()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->isFirst()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isLast()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->isLast()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isNull(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->isNull(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public move(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->move(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public moveToFirst()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->moveToFirst()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->moveToLast()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->moveToNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->moveToPosition(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public moveToPrevious()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->moveToPrevious()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public requery()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/wcdb/Cursor;->requery()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/tencent/wcdb/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWrapper;->mCursor:Lcom/tencent/wcdb/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/wcdb/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
