package com.apm.insight.b;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Printer;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
/* compiled from: LooperPrinterUtils.java */
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static int f6820a = 5;

    /* renamed from: b  reason: collision with root package name */
    private static b f6821b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f6822c;

    /* renamed from: d  reason: collision with root package name */
    private static Printer f6823d;

    /* compiled from: LooperPrinterUtils.java */
    /* loaded from: classes2.dex */
    public interface a {
    }

    /* compiled from: LooperPrinterUtils.java */
    /* loaded from: classes2.dex */
    static class b implements Printer {

        /* renamed from: a  reason: collision with root package name */
        List<Printer> f6824a = new ArrayList();

        /* renamed from: d  reason: collision with root package name */
        private List<Printer> f6827d = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        List<Printer> f6825b = new ArrayList();

        /* renamed from: e  reason: collision with root package name */
        private boolean f6828e = false;

        /* renamed from: c  reason: collision with root package name */
        boolean f6826c = false;

        b() {
        }

        @Override // android.util.Printer
        public final void println(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            i.b();
            if (str.charAt(0) == '>' && this.f6826c) {
                for (Printer printer : this.f6825b) {
                    if (!this.f6824a.contains(printer)) {
                        this.f6824a.add(printer);
                    }
                }
                this.f6825b.clear();
                this.f6826c = false;
            }
            if (this.f6824a.size() > i.f6820a) {
                Log.e("LooperPrinterUtils", "wrapper contains too many printer,please check if the useless printer have been removed");
            }
            for (Printer printer2 : this.f6824a) {
                if (printer2 != null) {
                    printer2.println(str);
                }
            }
            str.charAt(0);
            i.b();
        }
    }

    public static void a() {
        if (f6822c) {
            return;
        }
        f6822c = true;
        f6821b = new b();
        Printer d10 = d();
        f6823d = d10;
        if (d10 != null) {
            f6821b.f6824a.add(d10);
        }
        if (com.apm.insight.e.s()) {
            Looper.getMainLooper().setMessageLogging(f6821b);
        }
    }

    static /* synthetic */ a b() {
        return null;
    }

    private static Printer d() {
        try {
            Field declaredField = Class.forName("android.os.Looper").getDeclaredField("mLogging");
            declaredField.setAccessible(true);
            return (Printer) declaredField.get(Looper.getMainLooper());
        } catch (Exception unused) {
            return null;
        }
    }

    public static void a(Printer printer) {
        if (printer == null || f6821b.f6825b.contains(printer)) {
            return;
        }
        f6821b.f6825b.add(printer);
        f6821b.f6826c = true;
    }
}
