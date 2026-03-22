package com.huawei.hms.adapter.sysobs;

import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
public final class SystemManager {

    /* renamed from: a  reason: collision with root package name */
    private static SystemManager f21845a = new SystemManager();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f21846b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static SystemNotifier f21847c = new a();

    private SystemManager() {
    }

    public static SystemManager getInstance() {
        return f21845a;
    }

    public static SystemNotifier getSystemNotifier() {
        return f21847c;
    }

    public void notifyNoticeResult(int i10) {
        f21847c.notifyNoticeObservers(i10);
    }

    public void notifyResolutionResult(Intent intent, String str) {
        f21847c.notifyObservers(intent, str);
    }

    public void notifyUpdateResult(int i10) {
        f21847c.notifyObservers(i10);
    }

    /* loaded from: classes5.dex */
    class a implements SystemNotifier {

        /* renamed from: a  reason: collision with root package name */
        private final List<SystemObserver> f21848a = new ArrayList();

        a() {
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void notifyNoticeObservers(int i10) {
            synchronized (SystemManager.f21846b) {
                try {
                    Iterator<SystemObserver> it = this.f21848a.iterator();
                    while (it.hasNext()) {
                        if (it.next().onNoticeResult(i10)) {
                            it.remove();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void notifyObservers(Intent intent, String str) {
            synchronized (SystemManager.f21846b) {
                try {
                    Iterator<SystemObserver> it = this.f21848a.iterator();
                    while (it.hasNext()) {
                        if (it.next().onSolutionResult(intent, str)) {
                            it.remove();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void registerObserver(SystemObserver systemObserver) {
            if (systemObserver != null && !this.f21848a.contains(systemObserver)) {
                synchronized (SystemManager.f21846b) {
                    this.f21848a.add(systemObserver);
                }
            }
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void unRegisterObserver(SystemObserver systemObserver) {
            synchronized (SystemManager.f21846b) {
                this.f21848a.remove(systemObserver);
            }
        }

        @Override // com.huawei.hms.adapter.sysobs.SystemNotifier
        public void notifyObservers(int i10) {
            synchronized (SystemManager.f21846b) {
                try {
                    Iterator<SystemObserver> it = this.f21848a.iterator();
                    while (it.hasNext()) {
                        if (it.next().onUpdateResult(i10)) {
                            it.remove();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
