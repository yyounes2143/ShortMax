package com.bykv.vk.openvk.preload.geckox.statistic;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: StatisticDataManager.java */
/* loaded from: classes3.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Long, a> f11433a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, com.bykv.vk.openvk.preload.geckox.statistic.model.a> f11434b = new HashMap();

    a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(long j10) {
        a aVar;
        Map<Long, a> map = f11433a;
        synchronized (map) {
            try {
                aVar = map.get(Long.valueOf(j10));
                if (aVar == null) {
                    aVar = new a();
                    map.put(Long.valueOf(j10), aVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.bykv.vk.openvk.preload.geckox.statistic.model.a a(String str) {
        com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar;
        synchronized (this.f11434b) {
            try {
                aVar = this.f11434b.get(str);
                if (aVar == null) {
                    aVar = new com.bykv.vk.openvk.preload.geckox.statistic.model.a();
                    this.f11434b.put(str, aVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<com.bykv.vk.openvk.preload.geckox.statistic.model.a> a() {
        ArrayList arrayList;
        synchronized (this.f11434b) {
            arrayList = new ArrayList(this.f11434b.values());
        }
        return arrayList;
    }
}
