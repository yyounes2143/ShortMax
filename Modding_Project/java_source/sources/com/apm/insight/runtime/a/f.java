package com.apm.insight.runtime.a;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
import com.apm.insight.runtime.a.c;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
/* compiled from: CrashContextAssembly.java */
/* loaded from: classes2.dex */
public final class f {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f7170a;

    /* renamed from: b  reason: collision with root package name */
    private Context f7171b;

    /* renamed from: c  reason: collision with root package name */
    private Map<CrashType, c> f7172c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private b f7173d;

    /* renamed from: e  reason: collision with root package name */
    private d f7174e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CrashContextAssembly.java */
    /* renamed from: com.apm.insight.runtime.a.f$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7175a;

        static {
            int[] iArr = new int[CrashType.values().length];
            f7175a = iArr;
            try {
                iArr[CrashType.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7175a[CrashType.LAUNCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7175a[CrashType.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7175a[CrashType.ANR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7175a[CrashType.DART.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f7175a[CrashType.CUSTOM_JAVA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f7175a[CrashType.BLOCK.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f7175a[CrashType.ENSURE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private f(@NonNull Context context) {
        this.f7171b = context;
        try {
            this.f7173d = b.d();
            this.f7174e = new d(this.f7171b);
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
        }
    }

    public static f a() {
        if (f7170a == null) {
            Context g10 = com.apm.insight.e.g();
            if (g10 != null) {
                f7170a = new f(g10);
            } else {
                throw new IllegalArgumentException("NpthBus not init");
            }
        }
        return f7170a;
    }

    @Nullable
    private c a(CrashType crashType) {
        c cVar = this.f7172c.get(crashType);
        if (cVar != null) {
            return cVar;
        }
        switch (AnonymousClass1.f7175a[crashType.ordinal()]) {
            case 1:
                cVar = new j(this.f7171b, this.f7173d, this.f7174e);
                break;
            case 2:
                cVar = new k(this.f7171b, this.f7173d, this.f7174e);
                break;
            case 3:
                cVar = new l(this.f7171b, this.f7173d, this.f7174e);
                break;
            case 4:
                cVar = new a(this.f7171b, this.f7173d, this.f7174e);
                break;
            case 5:
                cVar = new h(this.f7171b, this.f7173d, this.f7174e);
                break;
            case 6:
                cVar = new g(this.f7171b, this.f7173d, this.f7174e);
                break;
            case 7:
                cVar = new e(this.f7171b, this.f7173d, this.f7174e);
                break;
            case 8:
                cVar = new i(this.f7171b, this.f7173d, this.f7174e);
                break;
        }
        if (cVar != null) {
            this.f7172c.put(crashType, cVar);
        }
        return cVar;
    }

    public final com.apm.insight.entity.a a(CrashType crashType, @Nullable c.a aVar) {
        c a10;
        if (crashType == null || (a10 = a(crashType)) == null) {
            return null;
        }
        return a10.a(null, aVar, true);
    }

    public final com.apm.insight.entity.a a(CrashType crashType, com.apm.insight.entity.a aVar) {
        c a10;
        return (crashType == null || (a10 = a(crashType)) == null) ? aVar : a10.a(aVar, null, false);
    }

    public final com.apm.insight.entity.a a(List<com.apm.insight.entity.a> list, JSONArray jSONArray) {
        if (list.isEmpty()) {
            return null;
        }
        com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
        JSONArray jSONArray2 = new JSONArray();
        for (com.apm.insight.entity.a aVar2 : list) {
            jSONArray2.put(aVar2.c());
        }
        aVar.a("data", (Object) jSONArray2);
        aVar.a("all_data", (Object) jSONArray);
        Header a10 = Header.a(this.f7171b);
        Header.a(a10);
        a10.c();
        a10.d();
        a10.e();
        Header.b(a10);
        aVar.a(a10);
        return aVar;
    }
}
