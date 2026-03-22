package com.bytedance.bdtracker;

import android.text.TextUtils;
import com.bytedance.applog.AppLog;
import com.bytedance.applog.IAppLogInstance;
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static e f11874a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static e f11875b = new C0154b();

    /* renamed from: c  reason: collision with root package name */
    public static e f11876c = new c();

    /* loaded from: classes3.dex */
    public static class a implements e {
        @Override // com.bytedance.bdtracker.b.e
        public boolean a(com.bytedance.bdtracker.d dVar) {
            return dVar.isH5CollectEnable();
        }
    }

    /* renamed from: com.bytedance.bdtracker.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0154b implements e {
        @Override // com.bytedance.bdtracker.b.e
        public boolean a(com.bytedance.bdtracker.d dVar) {
            if (dVar.getInitConfig() != null && dVar.getInitConfig().isHandleLifeCycle()) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public static class c implements e {
        @Override // com.bytedance.bdtracker.b.e
        public boolean a(com.bytedance.bdtracker.d dVar) {
            boolean z10;
            if (dVar.getInitConfig() != null && dVar.getInitConfig().isPageMetaAnnotationEnable()) {
                z10 = true;
            } else {
                z10 = false;
            }
            return !z10;
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(com.bytedance.bdtracker.d dVar);
    }

    /* loaded from: classes3.dex */
    public interface e {
        boolean a(com.bytedance.bdtracker.d dVar);
    }

    /* loaded from: classes3.dex */
    public interface f {
        u3 a();
    }

    public static com.bytedance.bdtracker.d a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (com.bytedance.bdtracker.d dVar : com.bytedance.bdtracker.d.J) {
            if (str.equals(dVar.f11913m)) {
                return dVar;
            }
        }
        return null;
    }

    public static boolean b(String str) {
        if (!TextUtils.isEmpty(str)) {
            for (com.bytedance.bdtracker.d dVar : com.bytedance.bdtracker.d.J) {
                if (str.equals(dVar.f11913m)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String a(IAppLogInstance iAppLogInstance, String str) {
        if (AppLog.getInstance() == iAppLogInstance) {
            return str;
        }
        return str + "_" + iAppLogInstance.getAppId();
    }

    public static void a(d dVar) {
        for (com.bytedance.bdtracker.d dVar2 : com.bytedance.bdtracker.d.J) {
            dVar.a(dVar2);
        }
    }

    public static boolean a(e eVar) {
        for (com.bytedance.bdtracker.d dVar : com.bytedance.bdtracker.d.J) {
            if (eVar.a(dVar)) {
                return true;
            }
        }
        return false;
    }

    public static void a(String[] strArr) {
        for (com.bytedance.bdtracker.d dVar : com.bytedance.bdtracker.d.J) {
            dVar.receive((String[]) strArr.clone());
        }
    }

    public static void a(f fVar, e eVar) {
        u3 u3Var = null;
        for (com.bytedance.bdtracker.d dVar : com.bytedance.bdtracker.d.J) {
            if (eVar.a(dVar)) {
                if (u3Var == null) {
                    u3Var = fVar.a();
                }
                dVar.receive(u3Var.m4626clone());
            }
        }
    }

    public static void a(u3 u3Var, e eVar) {
        for (com.bytedance.bdtracker.d dVar : com.bytedance.bdtracker.d.J) {
            if (eVar.a(dVar)) {
                dVar.receive(u3Var.m4626clone());
            }
        }
    }
}
