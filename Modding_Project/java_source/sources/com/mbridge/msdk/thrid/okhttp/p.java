package com.mbridge.msdk.thrid.okhttp;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: Headers.java */
/* loaded from: classes6.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private final String[] f29987a;

    p(a aVar) {
        List<String> list = aVar.f29988a;
        this.f29987a = (String[]) list.toArray(new String[list.size()]);
    }

    public String a(int i10) {
        return this.f29987a[i10 * 2];
    }

    public String b(String str) {
        return a(this.f29987a, str);
    }

    public List<String> c(String str) {
        int b10 = b();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < b10; i10++) {
            if (str.equalsIgnoreCase(a(i10))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(b(i10));
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    public boolean equals(Object obj) {
        if ((obj instanceof p) && Arrays.equals(((p) obj).f29987a, this.f29987a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f29987a);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int b10 = b();
        for (int i10 = 0; i10 < b10; i10++) {
            sb2.append(a(i10));
            sb2.append(": ");
            sb2.append(b(i10));
            sb2.append("\n");
        }
        return sb2.toString();
    }

    /* compiled from: Headers.java */
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final List<String> f29988a = new ArrayList(20);

        /* JADX INFO: Access modifiers changed from: package-private */
        public a a(String str) {
            int indexOf = str.indexOf(":", 1);
            if (indexOf != -1) {
                return b(str.substring(0, indexOf), str.substring(indexOf + 1));
            }
            if (str.startsWith(":")) {
                return b("", str.substring(1));
            }
            return b("", str);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a b(String str, String str2) {
            this.f29988a.add(str);
            this.f29988a.add(str2.trim());
            return this;
        }

        public a c(String str, String str2) {
            p.a(str);
            p.a(str2, str);
            b(str);
            b(str, str2);
            return this;
        }

        public a b(String str) {
            int i10 = 0;
            while (i10 < this.f29988a.size()) {
                if (str.equalsIgnoreCase(this.f29988a.get(i10))) {
                    this.f29988a.remove(i10);
                    this.f29988a.remove(i10);
                    i10 -= 2;
                }
                i10 += 2;
            }
            return this;
        }

        public a a(String str, String str2) {
            p.a(str);
            p.a(str2, str);
            return b(str, str2);
        }

        public p a() {
            return new p(this);
        }
    }

    public a a() {
        a aVar = new a();
        Collections.addAll(aVar.f29988a, this.f29987a);
        return aVar;
    }

    public int b() {
        return this.f29987a.length / 2;
    }

    public String b(int i10) {
        return this.f29987a[(i10 * 2) + 1];
    }

    private static String a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    static void a(String str) {
        if (str != null) {
            if (!str.isEmpty()) {
                int length = str.length();
                for (int i10 = 0; i10 < length; i10++) {
                    char charAt = str.charAt(i10);
                    if (charAt <= ' ' || charAt >= 127) {
                        throw new IllegalArgumentException(com.mbridge.msdk.thrid.okhttp.internal.c.a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(charAt), Integer.valueOf(i10), str));
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty");
        }
        throw new NullPointerException("name == null");
    }

    static void a(String str, String str2) {
        if (str != null) {
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                char charAt = str.charAt(i10);
                if ((charAt <= 31 && charAt != '\t') || charAt >= 127) {
                    throw new IllegalArgumentException(com.mbridge.msdk.thrid.okhttp.internal.c.a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(charAt), Integer.valueOf(i10), str2, str));
                }
            }
            return;
        }
        throw new NullPointerException("value for name " + str2 + " == null");
    }
}
