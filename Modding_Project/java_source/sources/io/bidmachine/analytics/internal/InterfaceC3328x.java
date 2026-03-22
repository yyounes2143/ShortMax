package io.bidmachine.analytics.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: io.bidmachine.analytics.internal.x  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public interface InterfaceC3328x extends IInterface {

    /* renamed from: io.bidmachine.analytics.internal.x$a */
    /* loaded from: classes7.dex */
    public static final class a implements InterfaceC3328x {

        /* renamed from: d  reason: collision with root package name */
        public static final d f54339d = new d(null);

        /* renamed from: e  reason: collision with root package name */
        private static final ms.i f54340e = kotlin.c.b(c.f54367a);

        /* renamed from: f  reason: collision with root package name */
        private static final b f54341f;

        /* renamed from: g  reason: collision with root package name */
        private static final b f54342g;

        /* renamed from: h  reason: collision with root package name */
        private static final b f54343h;

        /* renamed from: i  reason: collision with root package name */
        private static final b f54344i;

        /* renamed from: j  reason: collision with root package name */
        private static final b f54345j;

        /* renamed from: k  reason: collision with root package name */
        private static final b f54346k;

        /* renamed from: l  reason: collision with root package name */
        private static final b f54347l;

        /* renamed from: m  reason: collision with root package name */
        private static final b f54348m;

        /* renamed from: n  reason: collision with root package name */
        private static final b f54349n;

        /* renamed from: o  reason: collision with root package name */
        private static final b f54350o;

        /* renamed from: p  reason: collision with root package name */
        private static final b f54351p;

        /* renamed from: q  reason: collision with root package name */
        private static final b f54352q;

        /* renamed from: r  reason: collision with root package name */
        private static final b f54353r;

        /* renamed from: s  reason: collision with root package name */
        private static final b f54354s;

        /* renamed from: a  reason: collision with root package name */
        private final IBinder f54355a;

        /* renamed from: b  reason: collision with root package name */
        private b f54356b;

        /* renamed from: c  reason: collision with root package name */
        private final Function0 f54357c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: io.bidmachine.analytics.internal.x$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0788a extends Lambda implements Function0 {

            /* renamed from: a  reason: collision with root package name */
            public static final C0788a f54358a = new C0788a();

            C0788a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: a */
            public final Parcel invoke() {
                return Parcel.obtain();
            }
        }

        /* renamed from: io.bidmachine.analytics.internal.x$a$b */
        /* loaded from: classes7.dex */
        public static final class b {

            /* renamed from: a  reason: collision with root package name */
            private final int f54359a;

            /* renamed from: b  reason: collision with root package name */
            private final int f54360b;

            /* renamed from: c  reason: collision with root package name */
            private final int f54361c;

            /* renamed from: d  reason: collision with root package name */
            private final int f54362d;

            /* renamed from: e  reason: collision with root package name */
            private final int f54363e;

            /* renamed from: f  reason: collision with root package name */
            private final int f54364f;

            /* renamed from: g  reason: collision with root package name */
            private final int f54365g;

            /* renamed from: h  reason: collision with root package name */
            private final int f54366h;

            public b(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                this.f54359a = i10;
                this.f54360b = i11;
                this.f54361c = i12;
                this.f54362d = i13;
                this.f54363e = i14;
                this.f54364f = i15;
                this.f54365g = i16;
                this.f54366h = i17;
            }

            public final b a(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                return new b(i10, i11, i12, i13, i14, i15, i16, i17);
            }

            public final int b() {
                return this.f54366h;
            }

            public final int c() {
                return this.f54364f;
            }

            public final int d() {
                return this.f54360b;
            }

            public final int e() {
                return this.f54361c;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                if (this.f54359a == bVar.f54359a && this.f54360b == bVar.f54360b && this.f54361c == bVar.f54361c && this.f54362d == bVar.f54362d && this.f54363e == bVar.f54363e && this.f54364f == bVar.f54364f && this.f54365g == bVar.f54365g && this.f54366h == bVar.f54366h) {
                    return true;
                }
                return false;
            }

            public final int f() {
                return this.f54365g;
            }

            public final int g() {
                return this.f54363e;
            }

            public final int h() {
                return this.f54359a;
            }

            public int hashCode() {
                return (((((((((((((Integer.hashCode(this.f54359a) * 31) + Integer.hashCode(this.f54360b)) * 31) + Integer.hashCode(this.f54361c)) * 31) + Integer.hashCode(this.f54362d)) * 31) + Integer.hashCode(this.f54363e)) * 31) + Integer.hashCode(this.f54364f)) * 31) + Integer.hashCode(this.f54365g)) * 31) + Integer.hashCode(this.f54366h);
            }

            public String toString() {
                return super.toString();
            }

            public static /* synthetic */ b a(b bVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, Object obj) {
                return bVar.a((i18 & 1) != 0 ? bVar.f54359a : i10, (i18 & 2) != 0 ? bVar.f54360b : i11, (i18 & 4) != 0 ? bVar.f54361c : i12, (i18 & 8) != 0 ? bVar.f54362d : i13, (i18 & 16) != 0 ? bVar.f54363e : i14, (i18 & 32) != 0 ? bVar.f54364f : i15, (i18 & 64) != 0 ? bVar.f54365g : i16, (i18 & 128) != 0 ? bVar.f54366h : i17);
            }

            public final int a() {
                return this.f54362d;
            }
        }

        /* renamed from: io.bidmachine.analytics.internal.x$a$c */
        /* loaded from: classes7.dex */
        static final class c extends Lambda implements Function0 {

            /* renamed from: a  reason: collision with root package name */
            public static final c f54367a = new c();

            c() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: a */
            public final String invoke() {
                return s0.a("Y29tLmFuZHJvaWQudmVuZGluZy5iaWxsaW5nLklJbkFwcEJpbGxpbmdTZXJ2aWNl");
            }
        }

        /* renamed from: io.bidmachine.analytics.internal.x$a$d */
        /* loaded from: classes7.dex */
        public static final class d {
            public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final String a() {
                return (String) a.f54340e.getValue();
            }

            public final b b() {
                return a.f54342g;
            }

            public final b c() {
                return a.f54343h;
            }

            public final b d() {
                return a.f54344i;
            }

            public final b e() {
                return a.f54345j;
            }

            public final b f() {
                return a.f54346k;
            }

            public final b g() {
                return a.f54347l;
            }

            public final b h() {
                return a.f54348m;
            }

            public final b i() {
                return a.f54349n;
            }

            public final b j() {
                return a.f54350o;
            }

            public final b k() {
                return a.f54351p;
            }

            public final b l() {
                return a.f54352q;
            }

            public final b m() {
                return a.f54353r;
            }

            public final b n() {
                return a.f54354s;
            }

            public final b o() {
                return a.f54341f;
            }

            private d() {
            }

            public final b a(t0 t0Var) {
                return t0Var.compareTo(new t0(5, 1, 0)) < 0 ? b() : t0Var.compareTo(new t0(5, 2, 0)) < 0 ? c() : t0Var.compareTo(new t0(5, 2, 1)) < 0 ? d() : t0Var.compareTo(new t0(6, 0, 0)) < 0 ? e() : t0Var.compareTo(new t0(6, 0, 1)) < 0 ? f() : t0Var.compareTo(new t0(6, 1, 0)) < 0 ? g() : t0Var.compareTo(new t0(6, 2, 0)) < 0 ? h() : t0Var.compareTo(new t0(6, 2, 1)) < 0 ? i() : t0Var.compareTo(new t0(7, 0, 0)) < 0 ? j() : t0Var.compareTo(new t0(7, 1, 0)) < 0 ? k() : t0Var.compareTo(new t0(7, 1, 1)) < 0 ? l() : t0Var.compareTo(new t0(7, 2, 0)) < 0 ? m() : t0Var.compareTo(new t0(8, 0, 1)) < 0 ? n() : o();
            }
        }

        static {
            b bVar = new b(1, 25, 11, 24, 9, 6, 901, 20);
            f54341f = bVar;
            b a10 = b.a(bVar, 0, 17, 0, 9, 0, 0, 0, 17, 117, null);
            f54342g = a10;
            f54343h = a10;
            b a11 = b.a(a10, 0, 19, 0, 19, 0, 0, 0, 0, 245, null);
            f54344i = a11;
            f54345j = a11;
            b a12 = b.a(a11, 0, 20, 0, 0, 0, 0, 0, 20, 125, null);
            f54346k = a12;
            f54347l = a12;
            b a13 = b.a(a12, 0, 21, 0, 0, 0, 0, 0, 0, 253, null);
            f54348m = a13;
            b a14 = b.a(a13, 0, 22, 0, 0, 0, 0, 0, 0, 253, null);
            f54349n = a14;
            f54350o = a14;
            f54351p = a14;
            b a15 = b.a(a14, 0, 23, 0, 0, 0, 0, 0, 0, 253, null);
            f54352q = a15;
            b a16 = b.a(a15, 0, 23, 0, 0, 0, 0, 0, 0, 253, null);
            f54353r = a16;
            f54354s = b.a(a16, 0, 25, 0, 24, 0, 0, 0, 0, 245, null);
        }

        public a(IBinder iBinder, b bVar, Function0 function0) {
            this.f54355a = iBinder;
            this.f54356b = bVar;
            this.f54357c = function0;
        }

        private final Parcel p() {
            Parcel parcel = (Parcel) this.f54357c.invoke();
            parcel.writeInterfaceToken(f54339d.a());
            return parcel;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f54355a;
        }

        @Override // io.bidmachine.analytics.internal.InterfaceC3328x
        public int a(String str, String str2) {
            Parcel p10 = p();
            p10.writeInt(this.f54356b.d());
            p10.writeString(str);
            p10.writeString(str2);
            Parcel a10 = a(this.f54356b.h(), p10);
            int readInt = a10.readInt();
            a10.recycle();
            return readInt;
        }

        @Override // io.bidmachine.analytics.internal.InterfaceC3328x
        public Bundle b(String str, String str2, Bundle bundle) {
            Parcel p10 = p();
            p10.writeInt(this.f54356b.c());
            p10.writeString(str);
            p10.writeString(str2);
            p10.writeString(null);
            a(p10, bundle);
            Parcel a10 = a(this.f54356b.g(), p10);
            Bundle bundle2 = (Bundle) a(a10, Bundle.CREATOR);
            a10.recycle();
            return bundle2;
        }

        public /* synthetic */ a(IBinder iBinder, b bVar, Function0 function0, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(iBinder, bVar, (i10 & 4) != 0 ? C0788a.f54358a : function0);
        }

        @Override // io.bidmachine.analytics.internal.InterfaceC3328x
        public Bundle a(String str, String str2, Bundle bundle) {
            Parcel p10 = p();
            p10.writeInt(this.f54356b.a());
            p10.writeString(str);
            p10.writeString(str2);
            p10.writeString(null);
            a(p10, bundle);
            Parcel a10 = a(this.f54356b.e(), p10);
            Bundle bundle2 = (Bundle) a(a10, Bundle.CREATOR);
            a10.recycle();
            return bundle2;
        }

        @Override // io.bidmachine.analytics.internal.InterfaceC3328x
        public Bundle a(String str, String str2, Bundle bundle, Bundle bundle2) {
            Parcel p10 = p();
            p10.writeInt(this.f54356b.b());
            p10.writeString(str);
            p10.writeString(str2);
            a(p10, bundle);
            a(p10, bundle2);
            Parcel a10 = a(this.f54356b.f(), p10);
            Bundle bundle3 = (Bundle) a(a10, Bundle.CREATOR);
            a10.recycle();
            return bundle3;
        }

        private final void a(Parcel parcel, Parcelable parcelable) {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }

        public final Parcel a(int i10, Parcel parcel) {
            Parcel parcel2 = (Parcel) this.f54357c.invoke();
            try {
                try {
                    this.f54355a.transact(i10, parcel, parcel2, 0);
                    parcel2.readException();
                    return parcel2;
                } catch (RuntimeException e10) {
                    parcel2.recycle();
                    throw e10;
                }
            } finally {
                parcel.recycle();
            }
        }

        private final Parcelable a(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() == 0) {
                return null;
            }
            Object createFromParcel = creator.createFromParcel(parcel);
            Intrinsics.checkNotNull(createFromParcel, "null cannot be cast to non-null type android.os.Parcelable");
            return (Parcelable) createFromParcel;
        }
    }

    int a(String str, String str2);

    Bundle a(String str, String str2, Bundle bundle);

    Bundle a(String str, String str2, Bundle bundle, Bundle bundle2);

    Bundle b(String str, String str2, Bundle bundle);
}
