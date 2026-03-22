package com.huawei.hms.common.sqlite;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.CursorWrapper;
/* loaded from: classes5.dex */
public class HMSCursorWrapper extends CursorWrapper implements CrossProcessCursor {

    /* renamed from: a  reason: collision with root package name */
    private AbstractWindowedCursor f22101a;

    public HMSCursorWrapper(Cursor cursor) {
        super(cursor);
        if (cursor != null) {
            if (cursor instanceof CursorWrapper) {
                Cursor wrappedCursor = ((CursorWrapper) cursor).getWrappedCursor();
                if (wrappedCursor != null) {
                    if (wrappedCursor instanceof AbstractWindowedCursor) {
                        this.f22101a = (AbstractWindowedCursor) wrappedCursor;
                        return;
                    }
                    throw new IllegalArgumentException("getWrappedCursor:" + wrappedCursor + " is not a subclass for CursorWrapper");
                }
                throw new IllegalArgumentException("getWrappedCursor cannot be null");
            }
            throw new IllegalArgumentException("cursor:" + cursor + " is not a subclass for CursorWrapper");
        }
        throw new IllegalArgumentException("cursor cannot be null");
    }

    @Override // android.database.CrossProcessCursor
    public void fillWindow(int i10, CursorWindow cursorWindow) {
        this.f22101a.fillWindow(i10, cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    public CursorWindow getWindow() {
        return this.f22101a.getWindow();
    }

    @Override // android.database.CursorWrapper
    public Cursor getWrappedCursor() {
        return this.f22101a;
    }

    @Override // android.database.CrossProcessCursor
    public boolean onMove(int i10, int i11) {
        return this.f22101a.onMove(i10, i11);
    }

    public void setWindow(CursorWindow cursorWindow) {
        this.f22101a.setWindow(cursorWindow);
    }
}
