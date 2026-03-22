package com.google.android.exoplayer2.extractor.flv;

import androidx.annotation.Nullable;
import b7.g0;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import t5.j;
/* compiled from: ScriptTagPayloadReader.java */
/* loaded from: classes4.dex */
final class c extends TagPayloadReader {

    /* renamed from: b  reason: collision with root package name */
    private long f17627b;

    /* renamed from: c  reason: collision with root package name */
    private long[] f17628c;

    /* renamed from: d  reason: collision with root package name */
    private long[] f17629d;

    public c() {
        super(new j());
        this.f17627b = -9223372036854775807L;
        this.f17628c = new long[0];
        this.f17629d = new long[0];
    }

    private static Boolean g(g0 g0Var) {
        boolean z10 = true;
        if (g0Var.D() != 1) {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    @Nullable
    private static Object h(g0 g0Var, int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 8) {
                            if (i10 != 10) {
                                if (i10 != 11) {
                                    return null;
                                }
                                return i(g0Var);
                            }
                            return m(g0Var);
                        }
                        return k(g0Var);
                    }
                    return l(g0Var);
                }
                return n(g0Var);
            }
            return g(g0Var);
        }
        return j(g0Var);
    }

    private static Date i(g0 g0Var) {
        Date date = new Date((long) j(g0Var).doubleValue());
        g0Var.Q(2);
        return date;
    }

    private static Double j(g0 g0Var) {
        return Double.valueOf(Double.longBitsToDouble(g0Var.w()));
    }

    private static HashMap<String, Object> k(g0 g0Var) {
        int H = g0Var.H();
        HashMap<String, Object> hashMap = new HashMap<>(H);
        for (int i10 = 0; i10 < H; i10++) {
            String n10 = n(g0Var);
            Object h10 = h(g0Var, o(g0Var));
            if (h10 != null) {
                hashMap.put(n10, h10);
            }
        }
        return hashMap;
    }

    private static HashMap<String, Object> l(g0 g0Var) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String n10 = n(g0Var);
            int o10 = o(g0Var);
            if (o10 == 9) {
                return hashMap;
            }
            Object h10 = h(g0Var, o10);
            if (h10 != null) {
                hashMap.put(n10, h10);
            }
        }
    }

    private static ArrayList<Object> m(g0 g0Var) {
        int H = g0Var.H();
        ArrayList<Object> arrayList = new ArrayList<>(H);
        for (int i10 = 0; i10 < H; i10++) {
            Object h10 = h(g0Var, o(g0Var));
            if (h10 != null) {
                arrayList.add(h10);
            }
        }
        return arrayList;
    }

    private static String n(g0 g0Var) {
        int J = g0Var.J();
        int e10 = g0Var.e();
        g0Var.Q(J);
        return new String(g0Var.d(), e10, J);
    }

    private static int o(g0 g0Var) {
        return g0Var.D();
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(g0 g0Var) {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(g0 g0Var, long j10) {
        if (o(g0Var) != 2 || !"onMetaData".equals(n(g0Var)) || g0Var.a() == 0 || o(g0Var) != 8) {
            return false;
        }
        HashMap<String, Object> k10 = k(g0Var);
        Object obj = k10.get("duration");
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            if (doubleValue > 0.0d) {
                this.f17627b = (long) (doubleValue * 1000000.0d);
            }
        }
        Object obj2 = k10.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.f17628c = new long[size];
                this.f17629d = new long[size];
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj5 = list.get(i10);
                    Object obj6 = list2.get(i10);
                    if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                        this.f17628c[i10] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.f17629d[i10] = ((Double) obj5).longValue();
                    } else {
                        this.f17628c = new long[0];
                        this.f17629d = new long[0];
                        break;
                    }
                }
            }
        }
        return false;
    }

    public long d() {
        return this.f17627b;
    }

    public long[] e() {
        return this.f17629d;
    }

    public long[] f() {
        return this.f17628c;
    }
}
