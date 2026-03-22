package com.tencent.wcdb;

import java.util.ArrayList;
/* loaded from: classes7.dex */
public abstract class Observable<T> {
    protected final ArrayList<T> mObservers = new ArrayList<>();

    public void registerObserver(T t10) {
        if (t10 != null) {
            synchronized (this.mObservers) {
                try {
                    if (!this.mObservers.contains(t10)) {
                        this.mObservers.add(t10);
                    } else {
                        throw new IllegalStateException("Observer " + t10 + " is already registered.");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        throw new IllegalArgumentException("The observer is null.");
    }

    public void unregisterAll() {
        synchronized (this.mObservers) {
            this.mObservers.clear();
        }
    }

    public void unregisterObserver(T t10) {
        if (t10 != null) {
            synchronized (this.mObservers) {
                try {
                    int indexOf = this.mObservers.indexOf(t10);
                    if (indexOf != -1) {
                        this.mObservers.remove(indexOf);
                    } else {
                        throw new IllegalStateException("Observer " + t10 + " was not registered.");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        throw new IllegalArgumentException("The observer is null.");
    }
}
