package d5;

import android.content.Context;
import androidx.annotation.NonNull;
/* compiled from: AutoValue_CreationContext.java */
/* loaded from: classes4.dex */
final class b extends f {

    /* renamed from: a  reason: collision with root package name */
    private final Context f49813a;

    /* renamed from: b  reason: collision with root package name */
    private final m5.a f49814b;

    /* renamed from: c  reason: collision with root package name */
    private final m5.a f49815c;

    /* renamed from: d  reason: collision with root package name */
    private final String f49816d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, m5.a aVar, m5.a aVar2, String str) {
        if (context != null) {
            this.f49813a = context;
            if (aVar != null) {
                this.f49814b = aVar;
                if (aVar2 != null) {
                    this.f49815c = aVar2;
                    if (str != null) {
                        this.f49816d = str;
                        return;
                    }
                    throw new NullPointerException("Null backendName");
                }
                throw new NullPointerException("Null monotonicClock");
            }
            throw new NullPointerException("Null wallClock");
        }
        throw new NullPointerException("Null applicationContext");
    }

    @Override // d5.f
    public Context b() {
        return this.f49813a;
    }

    @Override // d5.f
    @NonNull
    public String c() {
        return this.f49816d;
    }

    @Override // d5.f
    public m5.a d() {
        return this.f49815c;
    }

    @Override // d5.f
    public m5.a e() {
        return this.f49814b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f49813a.equals(fVar.b()) && this.f49814b.equals(fVar.e()) && this.f49815c.equals(fVar.d()) && this.f49816d.equals(fVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.f49813a.hashCode() ^ 1000003) * 1000003) ^ this.f49814b.hashCode()) * 1000003) ^ this.f49815c.hashCode()) * 1000003) ^ this.f49816d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f49813a + ", wallClock=" + this.f49814b + ", monotonicClock=" + this.f49815c + ", backendName=" + this.f49816d + "}";
    }
}
