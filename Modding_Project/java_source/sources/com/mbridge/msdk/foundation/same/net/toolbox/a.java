package com.mbridge.msdk.foundation.same.net.toolbox;

import com.mbridge.msdk.tracker.network.g;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: NetworkResponse.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f27139a;

    /* renamed from: b  reason: collision with root package name */
    public final List<g> f27140b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f27141c;

    /* renamed from: d  reason: collision with root package name */
    public final int f27142d;

    public a(int i10, byte[] bArr, List<g> list) {
        this(i10, bArr, a(list), list);
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

    private a(int i10, byte[] bArr, Map<String, String> map, List<g> list) {
        this.f27142d = i10;
        this.f27139a = bArr;
        this.f27141c = map;
        if (list == null) {
            this.f27140b = null;
        } else {
            this.f27140b = Collections.unmodifiableList(list);
        }
    }
}
