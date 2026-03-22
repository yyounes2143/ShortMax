package com.mbridge.msdk.tracker.network;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: NetworkResponse.java */
/* loaded from: classes6.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    public final int f30315a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f30316b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f30317c;

    /* renamed from: d  reason: collision with root package name */
    public final List<g> f30318d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f30319e;

    /* renamed from: f  reason: collision with root package name */
    public final long f30320f;

    public q(int i10, byte[] bArr, boolean z10, long j10, List<g> list) {
        this(i10, bArr, a(list), list, z10, j10);
    }

    private static Map<String, String> a(List<g> list) {
        if (list == null) {
            return null;
        }
        if (list.isEmpty()) {
            return Collections.emptyMap();
        }
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (g gVar : list) {
            treeMap.put(gVar.a(), gVar.b());
        }
        return treeMap;
    }

    private q(int i10, byte[] bArr, Map<String, String> map, List<g> list, boolean z10, long j10) {
        this.f30315a = i10;
        this.f30316b = bArr;
        this.f30317c = map;
        if (list == null) {
            this.f30318d = null;
        } else {
            this.f30318d = Collections.unmodifiableList(list);
        }
        this.f30319e = z10;
        this.f30320f = j10;
    }
}
