package com.applovin.impl;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class z3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f10700a;

    /* renamed from: b  reason: collision with root package name */
    private final List f10701b;

    /* renamed from: c  reason: collision with root package name */
    private final int f10702c;

    /* renamed from: d  reason: collision with root package name */
    private Long f10703d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f10704e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private final Deque f10705f = new ArrayDeque();

    public z3(com.applovin.impl.sdk.k kVar) {
        this.f10700a = (String) kVar.a(v4.f10342r4);
        this.f10701b = kVar.c(v4.f10350s4);
        this.f10702c = ((Integer) kVar.a(v4.f10358t4)).intValue();
    }

    public Long a() {
        return this.f10703d;
    }

    public Deque b() {
        return this.f10705f;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str) || this.f10702c <= 0) {
            return;
        }
        Map map = (Map) this.f10704e.remove(str);
        if (CollectionUtils.isEmpty(map)) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("cc_ms", Long.valueOf(System.currentTimeMillis()));
        for (Map.Entry entry : map.entrySet()) {
            List<Long> list = (List) entry.getValue();
            if (!CollectionUtils.isEmpty(list)) {
                long j10 = 0;
                for (Long l10 : list) {
                    j10 += l10.longValue();
                }
                hashMap.put((String) entry.getKey(), Long.valueOf(j10 / list.size()));
            }
        }
        if (this.f10705f.size() == this.f10702c) {
            this.f10705f.pollLast();
        }
        this.f10705f.addFirst(hashMap);
    }

    public void b(long j10, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        if (!CollectionUtils.isEmpty(this.f10701b) && this.f10702c > 0) {
            Iterator it = this.f10701b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String str3 = (String) it.next();
                if (StringUtils.isValidString(str3) && str.endsWith(str3)) {
                    a(j10, str3, str2);
                    break;
                }
            }
        }
        if (StringUtils.isValidString(this.f10700a) && str.endsWith(this.f10700a)) {
            this.f10703d = Long.valueOf(j10);
        }
    }

    private void a(long j10, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        Map map = (Map) this.f10704e.get(str2);
        if (map == null) {
            map = new HashMap();
            this.f10704e.put(str2, map);
        }
        List list = (List) map.get(str);
        if (list == null) {
            list = new ArrayList();
            map.put(str, list);
        }
        list.add(Long.valueOf(j10));
    }
}
