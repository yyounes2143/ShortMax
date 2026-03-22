package com.bykv.vk.openvk.oJ.oJ.oJ.ba;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class tB extends Pfn implements SurfaceHolder.Callback, ZYk {
    private static final ArrayList<ba> tB = new ArrayList<>();
    private ba ZYk;
    private ZYk.oJ ex;
    private WeakReference<oJ> oJ;

    public tB(Context context) {
        super(context);
        oJ();
    }

    private void oJ() {
        ba baVar = new ba(this);
        this.ZYk = baVar;
        tB.add(baVar);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
    }

    public void setWindowVisibilityChangedListener(ZYk.oJ oJVar) {
        this.ex = oJVar;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
        WeakReference<oJ> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().oJ(surfaceHolder, i10, i11, i12);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        WeakReference<oJ> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().oJ(surfaceHolder);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        WeakReference<oJ> weakReference = this.oJ;
        if (weakReference != null && weakReference.get() != null) {
            this.oJ.get().ZYk(surfaceHolder);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk
    public void oJ(oJ oJVar) {
        this.oJ = new WeakReference<>(oJVar);
        SurfaceHolder holder = getHolder();
        holder.setFormat(-3);
        Iterator<ba> it = tB.iterator();
        while (it.hasNext()) {
            ba next = it.next();
            if (next != null && next.oJ() == null) {
                holder.removeCallback(next);
                it.remove();
            }
        }
        holder.addCallback(this.ZYk);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk
    public void oJ(int i10, int i11) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i11;
        layoutParams.width = i10;
        setLayoutParams(layoutParams);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.oJ.ba.ZYk
    public View getView() {
        return this;
    }
}
