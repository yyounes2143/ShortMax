package com.ss.texturerender.vsync;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes6.dex */
public class VRVsyncHelper implements IVsyncHelper {
    private CopyOnWriteArrayList<IVsyncCallback> mCallbackList = new CopyOnWriteArrayList<>();
    private boolean mEnable = true;

    @Override // com.ss.texturerender.vsync.IVsyncHelper
    public void addObserver(IVsyncCallback iVsyncCallback) {
        if (!this.mCallbackList.contains(iVsyncCallback)) {
            this.mCallbackList.add(iVsyncCallback);
        }
    }

    @Override // com.ss.texturerender.vsync.IVsyncHelper
    public boolean isWorking() {
        if (this.mCallbackList.size() > 0 && this.mEnable) {
            return true;
        }
        return false;
    }

    @Override // com.ss.texturerender.vsync.IVsyncHelper
    public void removeObserver(IVsyncCallback iVsyncCallback) {
        this.mCallbackList.remove(iVsyncCallback);
    }

    @Override // com.ss.texturerender.vsync.IVsyncHelper
    public void setEnable(boolean z10) {
        this.mEnable = z10;
    }

    @Override // com.ss.texturerender.vsync.IVsyncHelper
    public void update() {
        if (this.mEnable) {
            Iterator<IVsyncCallback> it = this.mCallbackList.iterator();
            while (it.hasNext()) {
                it.next().notifyVsync();
            }
        }
    }
}
