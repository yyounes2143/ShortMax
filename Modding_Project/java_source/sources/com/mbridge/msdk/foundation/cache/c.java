package com.mbridge.msdk.foundation.cache;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: CandidateResult.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: i  reason: collision with root package name */
    public static int f26670i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static int f26671j = 0;

    /* renamed from: k  reason: collision with root package name */
    public static int f26672k = 3;

    /* renamed from: l  reason: collision with root package name */
    public static int f26673l = 2;

    /* renamed from: a  reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f26674a;

    /* renamed from: b  reason: collision with root package name */
    private String f26675b;

    /* renamed from: c  reason: collision with root package name */
    private int f26676c = 21;

    /* renamed from: d  reason: collision with root package name */
    private int f26677d = f26671j;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<String> f26678e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    private List<String> f26679f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private List<String> f26680g = new ArrayList();

    /* renamed from: h  reason: collision with root package name */
    private List<String> f26681h = new ArrayList();

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f26674a = copyOnWriteArrayList;
    }

    public String b() {
        List<String> list = this.f26681h;
        if (list == null) {
            return "";
        }
        return list.toString();
    }

    public CopyOnWriteArrayList<CampaignEx> c() {
        return this.f26674a;
    }

    public String d() {
        List<String> list = this.f26680g;
        if (list == null) {
            return "";
        }
        return list.toString();
    }

    public String e() {
        return this.f26675b;
    }

    public String f() {
        List<String> list = this.f26679f;
        if (list == null) {
            return "";
        }
        return list.toString();
    }

    public int g() {
        return this.f26677d;
    }

    public String a() {
        ArrayList<String> arrayList = this.f26678e;
        if (arrayList == null) {
            return "";
        }
        return arrayList.toString();
    }

    public void c(String str) {
        try {
            List<String> list = this.f26679f;
            if (list != null) {
                list.add(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void b(String str) {
        try {
            List<String> list = this.f26680g;
            if (list != null) {
                list.add(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void d(String str) {
        this.f26675b = str;
    }

    public void a(String str) {
        try {
            ArrayList<String> arrayList = this.f26678e;
            if (arrayList != null) {
                arrayList.add(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(int i10) {
        this.f26677d = i10;
    }
}
