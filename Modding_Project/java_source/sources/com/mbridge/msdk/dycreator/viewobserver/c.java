package com.mbridge.msdk.dycreator.viewobserver;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: ClickSubject.java */
/* loaded from: classes5.dex */
public class c extends a {
    public void a(Object obj) {
        b bVar;
        ConcurrentHashMap<Integer, Object> concurrentHashMap = this.f26609b;
        if (concurrentHashMap != null && concurrentHashMap.size() > 0) {
            for (Map.Entry<Integer, Object> entry : this.f26609b.entrySet()) {
                if (entry != null) {
                    try {
                        if (entry.getValue() != null && (bVar = (b) entry.getValue()) != null) {
                            bVar.a(obj);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
    }
}
