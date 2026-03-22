package com.mbridge.msdk.foundation.same.directory;

import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.s0;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: MBridgeDirManager.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: c  reason: collision with root package name */
    private static volatile e f27084c;

    /* renamed from: a  reason: collision with root package name */
    private final b f27085a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<a> f27086b = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MBridgeDirManager.java */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public File f27087a;

        /* renamed from: b  reason: collision with root package name */
        public c f27088b;

        public a(c cVar, File file) {
            this.f27088b = cVar;
            this.f27087a = file;
        }
    }

    private e(b bVar) {
        this.f27085a = bVar;
    }

    public static File a(c cVar) {
        try {
            if (b() == null || b().f27086b == null || b().f27086b.isEmpty()) {
                return null;
            }
            Iterator<a> it = b().f27086b.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.f27088b.equals(cVar)) {
                    return next.f27087a;
                }
            }
            return null;
        } catch (Throwable th2) {
            p0.b("MBridgeDirManager", th2.getMessage(), th2);
            return null;
        }
    }

    public static String b(c cVar) {
        File a10 = a(cVar);
        if (a10 != null) {
            return a10.getAbsolutePath();
        }
        return null;
    }

    public static synchronized e b() {
        e eVar;
        synchronized (e.class) {
            try {
                if (f27084c == null && com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    s0.a(com.mbridge.msdk.foundation.controller.c.m().d());
                }
                eVar = f27084c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return eVar;
    }

    public static synchronized void a(b bVar) {
        synchronized (e.class) {
            if (f27084c == null) {
                f27084c = new e(bVar);
            }
        }
    }

    public boolean a() {
        return a(this.f27085a.a());
    }

    private boolean a(com.mbridge.msdk.foundation.same.directory.a aVar) {
        File a10;
        String str;
        com.mbridge.msdk.foundation.same.directory.a c10 = aVar.c();
        if (c10 == null) {
            str = aVar.b();
        } else {
            if (a(c10.d()) == null) {
                return false;
            }
            str = a10.getAbsolutePath() + File.separator + aVar.b();
        }
        File file = new File(str);
        if (!file.exists() ? file.mkdirs() : true) {
            this.f27086b.add(new a(aVar.d(), file));
            List<com.mbridge.msdk.foundation.same.directory.a> a11 = aVar.a();
            if (a11 != null) {
                for (com.mbridge.msdk.foundation.same.directory.a aVar2 : a11) {
                    if (!a(aVar2)) {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }
}
