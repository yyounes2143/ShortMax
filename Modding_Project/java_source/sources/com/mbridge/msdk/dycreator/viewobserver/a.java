package com.mbridge.msdk.dycreator.viewobserver;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: BaseAbstractSubject.java */
/* loaded from: classes5.dex */
public abstract class a extends com.mbridge.msdk.dycreator.observable.a {

    /* renamed from: a  reason: collision with root package name */
    private List<Object> f26608a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    protected ConcurrentHashMap<Integer, Object> f26609b = new ConcurrentHashMap<>();

    public synchronized void a(Object obj, int i10) {
        if (obj != null) {
            ConcurrentHashMap<Integer, Object> concurrentHashMap = this.f26609b;
            if (concurrentHashMap != null && !concurrentHashMap.containsValue(obj)) {
                this.f26609b.put(Integer.valueOf(i10), obj);
            }
        }
    }

    public synchronized void a() {
        this.f26609b.clear();
    }
}
