package com.bykv.vk.openvk.preload.a;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: GsonBuilder.java */
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: g  reason: collision with root package name */
    private String f11241g;

    /* renamed from: a  reason: collision with root package name */
    private com.bykv.vk.openvk.preload.a.b.c f11235a = com.bykv.vk.openvk.preload.a.b.c.f11142a;

    /* renamed from: b  reason: collision with root package name */
    private q f11236b = q.f11249a;

    /* renamed from: c  reason: collision with root package name */
    private c f11237c = b.f11026a;

    /* renamed from: d  reason: collision with root package name */
    private final Map<Type, f<?>> f11238d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final List<s> f11239e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final List<s> f11240f = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private int f11242h = 2;

    /* renamed from: i  reason: collision with root package name */
    private int f11243i = 2;

    /* renamed from: j  reason: collision with root package name */
    private boolean f11244j = true;

    public final e a(Type type, Object obj) {
        com.bykv.vk.openvk.preload.falconx.a.a.a(true);
        this.f11239e.add(com.bykv.vk.openvk.preload.a.b.a.m.a(com.bykv.vk.openvk.preload.a.c.a.a(type), (r) obj));
        return this;
    }

    public final d a() {
        a aVar;
        a aVar2;
        a aVar3;
        ArrayList arrayList = new ArrayList(this.f11239e.size() + this.f11240f.size() + 3);
        arrayList.addAll(this.f11239e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f11240f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        String str = this.f11241g;
        int i10 = this.f11242h;
        int i11 = this.f11243i;
        if (str != null && !"".equals(str.trim())) {
            aVar = new a(Date.class, str);
            aVar2 = new a(Timestamp.class, str);
            aVar3 = new a(java.sql.Date.class, str);
        } else {
            if (i10 != 2 && i11 != 2) {
                a aVar4 = new a(Date.class, i10, i11);
                a aVar5 = new a(Timestamp.class, i10, i11);
                a aVar6 = new a(java.sql.Date.class, i10, i11);
                aVar = aVar4;
                aVar2 = aVar5;
                aVar3 = aVar6;
            }
            return new d(this.f11235a, this.f11237c, this.f11238d, this.f11244j, this.f11236b, arrayList);
        }
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Date.class, aVar));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Timestamp.class, aVar2));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(java.sql.Date.class, aVar3));
        return new d(this.f11235a, this.f11237c, this.f11238d, this.f11244j, this.f11236b, arrayList);
    }
}
