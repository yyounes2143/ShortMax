package a5;

import androidx.annotation.Nullable;
import com.google.android.datatransport.Priority;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_Event.java */
/* loaded from: classes4.dex */
public final class a<T> extends d<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f129a;

    /* renamed from: b  reason: collision with root package name */
    private final T f130b;

    /* renamed from: c  reason: collision with root package name */
    private final Priority f131c;

    /* renamed from: d  reason: collision with root package name */
    private final f f132d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@Nullable Integer num, T t10, Priority priority, @Nullable f fVar, @Nullable e eVar) {
        this.f129a = num;
        if (t10 != null) {
            this.f130b = t10;
            if (priority != null) {
                this.f131c = priority;
                this.f132d = fVar;
                return;
            }
            throw new NullPointerException("Null priority");
        }
        throw new NullPointerException("Null payload");
    }

    @Override // a5.d
    @Nullable
    public Integer a() {
        return this.f129a;
    }

    @Override // a5.d
    @Nullable
    public e b() {
        return null;
    }

    @Override // a5.d
    public T c() {
        return this.f130b;
    }

    @Override // a5.d
    public Priority d() {
        return this.f131c;
    }

    @Override // a5.d
    @Nullable
    public f e() {
        return this.f132d;
    }

    public boolean equals(Object obj) {
        f fVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        Integer num = this.f129a;
        if (num != null ? num.equals(dVar.a()) : dVar.a() == null) {
            if (this.f130b.equals(dVar.c()) && this.f131c.equals(dVar.d()) && ((fVar = this.f132d) != null ? fVar.equals(dVar.e()) : dVar.e() == null)) {
                dVar.b();
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        Integer num = this.f129a;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int hashCode2 = (((((hashCode ^ 1000003) * 1000003) ^ this.f130b.hashCode()) * 1000003) ^ this.f131c.hashCode()) * 1000003;
        f fVar = this.f132d;
        if (fVar != null) {
            i10 = fVar.hashCode();
        }
        return (hashCode2 ^ i10) * 1000003;
    }

    public String toString() {
        return "Event{code=" + this.f129a + ", payload=" + this.f130b + ", priority=" + this.f131c + ", productData=" + this.f132d + ", eventContext=" + ((Object) null) + "}";
    }
}
