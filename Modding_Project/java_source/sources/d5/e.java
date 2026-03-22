package d5;

import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;
import d5.a;
/* compiled from: BackendRequest.java */
@AutoValue
/* loaded from: classes4.dex */
public abstract class e {

    /* compiled from: BackendRequest.java */
    @AutoValue.Builder
    /* loaded from: classes4.dex */
    public static abstract class a {
        public abstract e a();

        public abstract a b(Iterable<c5.i> iterable);

        public abstract a c(@Nullable byte[] bArr);
    }

    public static a a() {
        return new a.b();
    }

    public abstract Iterable<c5.i> b();

    @Nullable
    public abstract byte[] c();
}
