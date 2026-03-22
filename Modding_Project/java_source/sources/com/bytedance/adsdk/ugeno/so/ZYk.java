package com.bytedance.adsdk.ugeno.so;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes3.dex */
public abstract class ZYk {
    private DataSetObserver ZYk;
    private final DataSetObservable oJ = new DataSetObservable();

    public Parcelable ZYk() {
        return null;
    }

    public float oJ(int i10) {
        return 1.0f;
    }

    public abstract int oJ();

    public abstract boolean oJ(View view, Object obj);

    public void tB() {
        synchronized (this) {
            try {
                DataSetObserver dataSetObserver = this.ZYk;
                if (dataSetObserver != null) {
                    dataSetObserver.onChanged();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.oJ.notifyChanged();
    }

    public int oJ(Object obj) {
        return -1;
    }

    public Object oJ(ViewGroup viewGroup, int i10) {
        return oJ((View) viewGroup, i10);
    }

    public void oJ(ViewGroup viewGroup, int i10, Object obj) {
        oJ((View) viewGroup, i10, obj);
    }

    @Deprecated
    public Object oJ(View view, int i10) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    @Deprecated
    public void oJ(View view, int i10, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void oJ(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.ZYk = dataSetObserver;
        }
    }
}
