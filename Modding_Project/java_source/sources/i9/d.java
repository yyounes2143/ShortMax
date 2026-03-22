package i9;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import i9.b;
/* compiled from: RolloutAssignment.java */
@AutoValue
/* loaded from: classes5.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    public static final p8.a f53365a = new r8.d().j(i9.a.f53346a).i();

    /* compiled from: RolloutAssignment.java */
    @AutoValue.Builder
    /* loaded from: classes5.dex */
    public static abstract class a {
        @NonNull
        public abstract d a();

        @NonNull
        public abstract a b(@NonNull String str);

        @NonNull
        public abstract a c(@NonNull String str);

        @NonNull
        public abstract a d(@NonNull String str);

        @NonNull
        public abstract a e(long j10);

        @NonNull
        public abstract a f(@NonNull String str);
    }

    @NonNull
    public static a a() {
        return new b.C0775b();
    }

    @NonNull
    public abstract String b();

    @NonNull
    public abstract String c();

    @NonNull
    public abstract String d();

    public abstract long e();

    @NonNull
    public abstract String f();
}
