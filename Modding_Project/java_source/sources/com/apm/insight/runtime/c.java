package com.apm.insight.runtime;

import androidx.annotation.NonNull;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.IOOMCallback;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: CallbackCenter.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final List<ICrashCallback> f7178a = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final List<ICrashCallback> f7179b = new CopyOnWriteArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final List<ICrashCallback> f7180c = new CopyOnWriteArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final List<ICrashCallback> f7181d = new CopyOnWriteArrayList();

    /* renamed from: e  reason: collision with root package name */
    private final List<IOOMCallback> f7182e = new CopyOnWriteArrayList();

    /* compiled from: CallbackCenter.java */
    /* renamed from: com.apm.insight.runtime.c$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7183a;

        static {
            int[] iArr = new int[CrashType.values().length];
            f7183a = iArr;
            try {
                iArr[CrashType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7183a[CrashType.ANR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7183a[CrashType.JAVA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7183a[CrashType.LAUNCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7183a[CrashType.NATIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ICrashCallback iCrashCallback, CrashType crashType) {
        int i10 = AnonymousClass1.f7183a[crashType.ordinal()];
        if (i10 == 1) {
            this.f7178a.add(iCrashCallback);
            this.f7179b.add(iCrashCallback);
            this.f7180c.add(iCrashCallback);
            this.f7181d.add(iCrashCallback);
        } else if (i10 == 2) {
            this.f7181d.add(iCrashCallback);
        } else if (i10 == 3) {
            this.f7179b.add(iCrashCallback);
        } else if (i10 == 4) {
            this.f7178a.add(iCrashCallback);
        } else if (i10 != 5) {
        } else {
            this.f7180c.add(iCrashCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(ICrashCallback iCrashCallback, CrashType crashType) {
        int i10 = AnonymousClass1.f7183a[crashType.ordinal()];
        if (i10 == 1) {
            this.f7178a.remove(iCrashCallback);
            this.f7179b.remove(iCrashCallback);
            this.f7180c.remove(iCrashCallback);
            this.f7181d.remove(iCrashCallback);
        } else if (i10 == 2) {
            this.f7181d.remove(iCrashCallback);
        } else if (i10 == 3) {
            this.f7179b.remove(iCrashCallback);
        } else if (i10 == 4) {
            this.f7178a.remove(iCrashCallback);
        } else if (i10 != 5) {
        } else {
            this.f7180c.remove(iCrashCallback);
        }
    }

    @NonNull
    public final List<ICrashCallback> c() {
        return this.f7179b;
    }

    @NonNull
    public final List<ICrashCallback> d() {
        return this.f7180c;
    }

    @NonNull
    public final List<ICrashCallback> e() {
        return this.f7181d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(IOOMCallback iOOMCallback) {
        this.f7182e.add(iOOMCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(IOOMCallback iOOMCallback) {
        this.f7182e.remove(iOOMCallback);
    }

    @NonNull
    public final List<IOOMCallback> a() {
        return this.f7182e;
    }

    @NonNull
    public final List<ICrashCallback> b() {
        return this.f7178a;
    }
}
