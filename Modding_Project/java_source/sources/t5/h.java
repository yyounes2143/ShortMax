package t5;

import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import d6.h0;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: DefaultExtractorsFactory.java */
/* loaded from: classes4.dex */
public final class h implements p {

    /* renamed from: n  reason: collision with root package name */
    private static final int[] f67157n = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14};

    /* renamed from: o  reason: collision with root package name */
    private static final a f67158o = new a(new a.InterfaceC0929a() { // from class: t5.f
        @Override // t5.h.a.InterfaceC0929a
        public final Constructor a() {
            Constructor g10;
            g10 = h.g();
            return g10;
        }
    });

    /* renamed from: p  reason: collision with root package name */
    private static final a f67159p = new a(new a.InterfaceC0929a() { // from class: t5.g
        @Override // t5.h.a.InterfaceC0929a
        public final Constructor a() {
            Constructor h10;
            h10 = h.h();
            return h10;
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private boolean f67160b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f67161c;

    /* renamed from: d  reason: collision with root package name */
    private int f67162d;

    /* renamed from: e  reason: collision with root package name */
    private int f67163e;

    /* renamed from: f  reason: collision with root package name */
    private int f67164f;

    /* renamed from: g  reason: collision with root package name */
    private int f67165g;

    /* renamed from: h  reason: collision with root package name */
    private int f67166h;

    /* renamed from: i  reason: collision with root package name */
    private int f67167i;

    /* renamed from: j  reason: collision with root package name */
    private int f67168j;

    /* renamed from: l  reason: collision with root package name */
    private int f67170l;

    /* renamed from: k  reason: collision with root package name */
    private int f67169k = 1;

    /* renamed from: m  reason: collision with root package name */
    private int f67171m = 112800;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultExtractorsFactory.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC0929a f67172a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f67173b = new AtomicBoolean(false);
        @Nullable
        @GuardedBy("extensionLoaded")

        /* renamed from: c  reason: collision with root package name */
        private Constructor<? extends k> f67174c;

        /* compiled from: DefaultExtractorsFactory.java */
        /* renamed from: t5.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public interface InterfaceC0929a {
            @Nullable
            Constructor<? extends k> a() throws InvocationTargetException, IllegalAccessException, NoSuchMethodException, ClassNotFoundException;
        }

        public a(InterfaceC0929a interfaceC0929a) {
            this.f67172a = interfaceC0929a;
        }

        @Nullable
        private Constructor<? extends k> b() {
            synchronized (this.f67173b) {
                if (this.f67173b.get()) {
                    return this.f67174c;
                }
                try {
                    return this.f67172a.a();
                } catch (ClassNotFoundException unused) {
                    this.f67173b.set(true);
                    return this.f67174c;
                } catch (Exception e10) {
                    throw new RuntimeException("Error instantiating extension", e10);
                }
            }
        }

        @Nullable
        public k a(Object... objArr) {
            Constructor<? extends k> b10 = b();
            if (b10 == null) {
                return null;
            }
            try {
                return b10.newInstance(objArr);
            } catch (Exception e10) {
                throw new IllegalStateException("Unexpected error creating extractor", e10);
            }
        }
    }

    private void f(int i10, List<k> list) {
        int i11 = 2;
        switch (i10) {
            case 0:
                list.add(new d6.b());
                return;
            case 1:
                list.add(new d6.e());
                return;
            case 2:
                int i12 = this.f67162d | (this.f67160b ? 1 : 0);
                if (!this.f67161c) {
                    i11 = 0;
                }
                list.add(new d6.h(i11 | i12));
                return;
            case 3:
                int i13 = this.f67163e | (this.f67160b ? 1 : 0);
                if (!this.f67161c) {
                    i11 = 0;
                }
                list.add(new u5.b(i11 | i13));
                return;
            case 4:
                k a10 = f67158o.a(Integer.valueOf(this.f67164f));
                if (a10 != null) {
                    list.add(a10);
                    return;
                } else {
                    list.add(new w5.d(this.f67164f));
                    return;
                }
            case 5:
                list.add(new com.google.android.exoplayer2.extractor.flv.b());
                return;
            case 6:
                list.add(new z5.e(this.f67165g));
                return;
            case 7:
                int i14 = this.f67168j | (this.f67160b ? 1 : 0);
                if (!this.f67161c) {
                    i11 = 0;
                }
                list.add(new a6.f(i11 | i14));
                return;
            case 8:
                list.add(new b6.g(this.f67167i));
                list.add(new b6.k(this.f67166h));
                return;
            case 9:
                list.add(new c6.d());
                return;
            case 10:
                list.add(new d6.a0());
                return;
            case 11:
                list.add(new h0(this.f67169k, this.f67170l, this.f67171m));
                return;
            case 12:
                list.add(new e6.b());
                return;
            case 13:
            default:
                return;
            case 14:
                list.add(new y5.a());
                return;
            case 15:
                k a11 = f67159p.a(new Object[0]);
                if (a11 != null) {
                    list.add(a11);
                    return;
                }
                return;
            case 16:
                list.add(new v5.b());
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static Constructor<? extends k> g() throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException {
        if (!Boolean.TRUE.equals(Class.forName("com.google.android.exoplayer2.ext.flac.FlacLibrary").getMethod("isAvailable", new Class[0]).invoke(null, new Object[0]))) {
            return null;
        }
        return Class.forName("com.google.android.exoplayer2.ext.flac.FlacExtractor").asSubclass(k.class).getConstructor(Integer.TYPE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Constructor<? extends k> h() throws ClassNotFoundException, NoSuchMethodException {
        return Class.forName("com.google.android.exoplayer2.decoder.midi.MidiExtractor").asSubclass(k.class).getConstructor(new Class[0]);
    }

    @Override // t5.p
    public synchronized k[] createExtractors() {
        return d(Uri.EMPTY, new HashMap());
    }

    @Override // t5.p
    public synchronized k[] d(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        try {
            int[] iArr = f67157n;
            arrayList = new ArrayList(iArr.length);
            int b10 = b7.k.b(map);
            if (b10 != -1) {
                f(b10, arrayList);
            }
            int c10 = b7.k.c(uri);
            if (c10 != -1 && c10 != b10) {
                f(c10, arrayList);
            }
            for (int i10 : iArr) {
                if (i10 != b10 && i10 != c10) {
                    f(i10, arrayList);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (k[]) arrayList.toArray(new k[arrayList.size()]);
    }
}
