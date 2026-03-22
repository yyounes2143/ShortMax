package io.bidmachine.media3.extractor.flv;

import androidx.annotation.Nullable;
import ao.m;
import cn.b0;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: ScriptTagPayloadReader.java */
/* loaded from: classes8.dex */
final class c extends TagPayloadReader {

    /* renamed from: b  reason: collision with root package name */
    private long f57456b;

    /* renamed from: c  reason: collision with root package name */
    private long[] f57457c;

    /* renamed from: d  reason: collision with root package name */
    private long[] f57458d;

    public c() {
        super(new m());
        this.f57456b = -9223372036854775807L;
        this.f57457c = new long[0];
        this.f57458d = new long[0];
    }

    private static Boolean g(b0 b0Var) {
        boolean z10 = true;
        if (b0Var.H() != 1) {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    @Nullable
    private static Object h(b0 b0Var, int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 8) {
                            if (i10 != 10) {
                                if (i10 != 11) {
                                    return null;
                                }
                                return i(b0Var);
                            }
                            return m(b0Var);
                        }
                        return k(b0Var);
                    }
                    return l(b0Var);
                }
                return n(b0Var);
            }
            return g(b0Var);
        }
        return j(b0Var);
    }

    private static Date i(b0 b0Var) {
        Date date = new Date((long) j(b0Var).doubleValue());
        b0Var.X(2);
        return date;
    }

    private static Double j(b0 b0Var) {
        return Double.valueOf(Double.longBitsToDouble(b0Var.A()));
    }

    private static HashMap<String, Object> k(b0 b0Var) {
        int L = b0Var.L();
        HashMap<String, Object> hashMap = new HashMap<>(L);
        for (int i10 = 0; i10 < L; i10++) {
            String n10 = n(b0Var);
            Object h10 = h(b0Var, o(b0Var));
            if (h10 != null) {
                hashMap.put(n10, h10);
            }
        }
        return hashMap;
    }

    private static HashMap<String, Object> l(b0 b0Var) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String n10 = n(b0Var);
            int o10 = o(b0Var);
            if (o10 == 9) {
                return hashMap;
            }
            Object h10 = h(b0Var, o10);
            if (h10 != null) {
                hashMap.put(n10, h10);
            }
        }
    }

    private static ArrayList<Object> m(b0 b0Var) {
        int L = b0Var.L();
        ArrayList<Object> arrayList = new ArrayList<>(L);
        for (int i10 = 0; i10 < L; i10++) {
            Object h10 = h(b0Var, o(b0Var));
            if (h10 != null) {
                arrayList.add(h10);
            }
        }
        return arrayList;
    }

    private static String n(b0 b0Var) {
        int P = b0Var.P();
        int f10 = b0Var.f();
        b0Var.X(P);
        return new String(b0Var.e(), f10, P);
    }

    private static int o(b0 b0Var) {
        return b0Var.H();
    }

    @Override // io.bidmachine.media3.extractor.flv.TagPayloadReader
    protected boolean b(b0 b0Var) {
        return true;
    }

    @Override // io.bidmachine.media3.extractor.flv.TagPayloadReader
    protected boolean c(b0 b0Var, long j10) {
        if (o(b0Var) != 2 || !"onMetaData".equals(n(b0Var)) || b0Var.a() == 0 || o(b0Var) != 8) {
            return false;
        }
        HashMap<String, Object> k10 = k(b0Var);
        Object obj = k10.get("duration");
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            if (doubleValue > 0.0d) {
                this.f57456b = (long) (doubleValue * 1000000.0d);
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
                this.f57457c = new long[size];
                this.f57458d = new long[size];
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj5 = list.get(i10);
                    Object obj6 = list2.get(i10);
                    if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                        this.f57457c[i10] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                        this.f57458d[i10] = ((Double) obj5).longValue();
                    } else {
                        this.f57457c = new long[0];
                        this.f57458d = new long[0];
                        break;
                    }
                }
            }
        }
        return false;
    }

    public long d() {
        return this.f57456b;
    }

    public long[] e() {
        return this.f57458d;
    }

    public long[] f() {
        return this.f57457c;
    }
}
