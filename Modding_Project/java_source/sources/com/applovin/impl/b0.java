package com.applovin.impl;

import com.applovin.impl.q5;
import com.applovin.impl.s5;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class b0 implements s5.b, q5.b {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f7488a;

    /* renamed from: b  reason: collision with root package name */
    private final a f7489b;

    /* renamed from: c  reason: collision with root package name */
    private z f7490c;

    /* renamed from: d  reason: collision with root package name */
    private String f7491d;

    /* loaded from: classes2.dex */
    public interface a {
        void a(b bVar, String str);

        void a(z zVar, String str);
    }

    /* loaded from: classes2.dex */
    public enum b {
        APP_DETAILS_NOT_FOUND,
        INVALID_DEVELOPER_URI,
        APPADSTXT_NOT_FOUND,
        MISSING_APPLOVIN_ENTRIES,
        MISSING_NON_APPLOVIN_ENTRIES
    }

    public b0(com.applovin.impl.sdk.k kVar, a aVar) {
        this.f7488a = kVar;
        this.f7489b = aVar;
    }

    public void a() {
        z zVar = this.f7490c;
        if (zVar != null) {
            this.f7489b.a(zVar, this.f7491d);
            return;
        }
        this.f7488a.r0().a(new s5(this.f7488a, this));
    }

    public static List a(z zVar, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a0 a0Var = (a0) it.next();
            List<a0> list2 = (List) zVar.a().get(a0Var.b());
            if (list2 != null) {
                for (a0 a0Var2 : list2) {
                    if (a0Var2.a(a0Var)) {
                        break;
                    }
                }
            }
            arrayList.add(a0Var);
        }
        return arrayList;
    }

    @Override // com.applovin.impl.s5.b
    public void a(String str) {
        this.f7488a.r0().a(new q5(this.f7488a, str, this));
    }

    @Override // com.applovin.impl.s5.b
    public void a(b bVar) {
        this.f7489b.a(bVar, (String) null);
    }

    @Override // com.applovin.impl.q5.b
    public void a(String str, String str2) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        int i10 = 1;
        for (String str3 : str.split("\n")) {
            String trim = str3.split("#", 2)[0].trim();
            if (StringUtils.isValidString(trim)) {
                a0 a0Var = new a0(trim, i10);
                if (a0Var.h()) {
                    String b10 = a0Var.b();
                    List arrayList2 = hashMap.containsKey(b10) ? (List) hashMap.get(b10) : new ArrayList();
                    if (arrayList2 != null) {
                        arrayList2.add(a0Var);
                        hashMap.put(b10, arrayList2);
                    }
                } else {
                    arrayList.add(a0Var);
                }
            }
            i10++;
        }
        this.f7490c = new z(hashMap, arrayList);
        this.f7491d = str2;
        this.f7488a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f7488a.O().a("AppAdsTxtService", "app-ads.txt fetched: " + this.f7490c);
        }
        this.f7489b.a(this.f7490c, str2);
    }

    @Override // com.applovin.impl.q5.b
    public void a(b bVar, String str) {
        this.f7489b.a(bVar, str);
    }
}
