package com.mbridge.msdk.dycreator.subjectfactory;

import com.mbridge.msdk.dycreator.viewobserver.c;
import com.mbridge.msdk.dycreator.viewobserver.d;
import com.mbridge.msdk.dycreator.viewobserver.f;
import com.mbridge.msdk.dycreator.viewobserver.h;
/* compiled from: SubjectFactory.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f26576a;

    /* compiled from: SubjectFactory.java */
    /* renamed from: com.mbridge.msdk.dycreator.subjectfactory.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class C0360a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26577a;

        static {
            int[] iArr = new int[b.values().length];
            f26577a = iArr;
            try {
                iArr[b.VIEW_OBSERVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26577a[b.CLICK_OBSERVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26577a[b.EFFECT_OBSERVER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26577a[b.REPORT_OBSERVER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: SubjectFactory.java */
    /* loaded from: classes5.dex */
    public enum b {
        VIEW_OBSERVER,
        CLICK_OBSERVER,
        EFFECT_OBSERVER,
        REPORT_OBSERVER
    }

    private a() {
    }

    public static a a() {
        if (f26576a == null) {
            synchronized (a.class) {
                try {
                    if (f26576a == null) {
                        f26576a = new a();
                    }
                } finally {
                }
            }
        }
        return f26576a;
    }

    public <T extends com.mbridge.msdk.dycreator.viewobserver.a> T a(b bVar) {
        int i10 = C0360a.f26577a[bVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return null;
                    }
                    return new h();
                }
                return new f();
            }
            return new c();
        }
        return new d();
    }
}
