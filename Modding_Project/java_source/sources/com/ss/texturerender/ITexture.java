package com.ss.texturerender;
/* loaded from: classes6.dex */
public interface ITexture extends IRef {
    int getTexTarget();

    int lock();

    int tryLock(int i10);

    void unlock();
}
