package com.huawei.hms.common.internal;

import java.util.ArrayList;
import java.util.ListIterator;
/* loaded from: classes5.dex */
public class BindResolveClients {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f22036b = new Object();

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<ResolveClientBean> f22037a;

    /* loaded from: classes5.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final BindResolveClients f22038a = new BindResolveClients();
    }

    public static BindResolveClients getInstance() {
        return b.f22038a;
    }

    public boolean isClientRegistered(ResolveClientBean resolveClientBean) {
        boolean contains;
        synchronized (f22036b) {
            contains = this.f22037a.contains(resolveClientBean);
        }
        return contains;
    }

    public void notifyClientReconnect() {
        synchronized (f22036b) {
            try {
                ListIterator<ResolveClientBean> listIterator = this.f22037a.listIterator();
                while (listIterator.hasNext()) {
                    listIterator.next().clientReconnect();
                }
                this.f22037a.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void register(ResolveClientBean resolveClientBean) {
        if (resolveClientBean == null) {
            return;
        }
        synchronized (f22036b) {
            try {
                if (!this.f22037a.contains(resolveClientBean)) {
                    this.f22037a.add(resolveClientBean);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void unRegister(ResolveClientBean resolveClientBean) {
        if (resolveClientBean == null) {
            return;
        }
        synchronized (f22036b) {
            try {
                if (this.f22037a.contains(resolveClientBean)) {
                    ListIterator<ResolveClientBean> listIterator = this.f22037a.listIterator();
                    while (true) {
                        if (!listIterator.hasNext()) {
                            break;
                        } else if (resolveClientBean.equals(listIterator.next())) {
                            listIterator.remove();
                            break;
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void unRegisterAll() {
        synchronized (f22036b) {
            this.f22037a.clear();
        }
    }

    private BindResolveClients() {
        this.f22037a = new ArrayList<>();
    }
}
