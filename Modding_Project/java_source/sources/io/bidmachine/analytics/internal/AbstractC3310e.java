package io.bidmachine.analytics.internal;

import android.content.Context;
import io.bidmachine.analytics.internal.AbstractC3312g;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: io.bidmachine.analytics.internal.e  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public abstract class AbstractC3310e extends AbstractC3312g implements InterfaceC3311f {

    /* renamed from: d  reason: collision with root package name */
    private InterfaceC3311f f54075d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f54076e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final Map f54077f = new LinkedHashMap();

    /* renamed from: g  reason: collision with root package name */
    private b f54078g;

    /* renamed from: io.bidmachine.analytics.internal.e$a */
    /* loaded from: classes7.dex */
    public enum a {
        UNSPECIFIED,
        BANNER,
        INTERSTITIAL,
        REWARDED,
        NATIVE
    }

    /* renamed from: io.bidmachine.analytics.internal.e$b */
    /* loaded from: classes7.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f54085a;

        /* renamed from: b  reason: collision with root package name */
        private final float f54086b;

        /* renamed from: c  reason: collision with root package name */
        private final String f54087c;

        /* renamed from: d  reason: collision with root package name */
        private final float f54088d;

        public b(int i10, float f10, String str) {
            this.f54085a = i10;
            this.f54086b = f10;
            this.f54087c = str;
            this.f54088d = f10 * 1000;
        }

        public final b a(int i10, float f10, String str) {
            return new b(i10, f10, str);
        }

        public final float b() {
            return this.f54088d;
        }

        public final String c() {
            return this.f54087c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f54085a == bVar.f54085a && Float.compare(this.f54086b, bVar.f54086b) == 0 && Intrinsics.areEqual(this.f54087c, bVar.f54087c)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.f54085a) * 31) + Float.hashCode(this.f54086b)) * 31) + this.f54087c.hashCode();
        }

        public String toString() {
            return super.toString();
        }

        public static /* synthetic */ b a(b bVar, int i10, float f10, String str, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i10 = bVar.f54085a;
            }
            if ((i11 & 2) != 0) {
                f10 = bVar.f54086b;
            }
            if ((i11 & 4) != 0) {
                str = bVar.f54087c;
            }
            return bVar.a(i10, f10, str);
        }

        public final int a() {
            return this.f54085a;
        }

        public /* synthetic */ b(int i10, float f10, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? 0 : i10, f10, str);
        }
    }

    public void a(AbstractC3312g.a aVar) {
        this.f54075d = aVar.a();
    }

    public final b b() {
        b bVar;
        synchronized (this.f54076e) {
            bVar = this.f54078g;
        }
        return bVar;
    }

    public abstract b b(Map map);

    public abstract a c(Map map);

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public void f(Context context) {
        synchronized (this.f54076e) {
            this.f54077f.clear();
            this.f54078g = null;
            Unit unit = Unit.f60915a;
        }
    }

    @Override // io.bidmachine.analytics.internal.InterfaceC3311f
    public void a(Map map) {
        b b10;
        b a10;
        InterfaceC3311f interfaceC3311f = this.f54075d;
        if (interfaceC3311f != null) {
            interfaceC3311f.a(map);
        }
        a c10 = c(map);
        if (c10 == null || (b10 = b(map)) == null) {
            return;
        }
        synchronized (this.f54076e) {
            try {
                b bVar = this.f54078g;
                this.f54078g = b.a(b10, (bVar != null ? bVar.a() : 0) + 1, 0.0f, null, 6, null);
                b bVar2 = (b) this.f54077f.get(c10);
                Map map2 = this.f54077f;
                if (bVar2 == null) {
                    a10 = b.a(b10, 1, 0.0f, null, 6, null);
                } else {
                    a10 = b.a(b10, bVar2.a() + 1, 0.0f, null, 6, null);
                }
                map2.put(c10, a10);
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // io.bidmachine.analytics.internal.InterfaceC3311f
    public void a(q0 q0Var) {
        InterfaceC3311f interfaceC3311f = this.f54075d;
        if (interfaceC3311f != null) {
            interfaceC3311f.a(q0Var);
        }
    }

    public final b a(a aVar) {
        b bVar;
        synchronized (this.f54076e) {
            bVar = (b) this.f54077f.get(aVar);
        }
        return bVar;
    }
}
