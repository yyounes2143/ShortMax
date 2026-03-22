package c5;

import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import c5.d;
import com.google.android.datatransport.Priority;
import com.google.auto.value.AutoValue;
/* compiled from: TransportContext.java */
@AutoValue
/* loaded from: classes4.dex */
public abstract class p {

    /* compiled from: TransportContext.java */
    @AutoValue.Builder
    /* loaded from: classes4.dex */
    public static abstract class a {
        public abstract p a();

        public abstract a b(String str);

        public abstract a c(@Nullable byte[] bArr);

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public abstract a d(Priority priority);
    }

    public static a a() {
        return new d.b().d(Priority.DEFAULT);
    }

    public abstract String b();

    @Nullable
    public abstract byte[] c();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public abstract Priority d();

    public boolean e() {
        if (c() != null) {
            return true;
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public p f(Priority priority) {
        return a().b(b()).d(priority).c(c()).a();
    }

    public final String toString() {
        String encodeToString;
        String b10 = b();
        Priority d10 = d();
        if (c() == null) {
            encodeToString = "";
        } else {
            encodeToString = Base64.encodeToString(c(), 2);
        }
        return String.format("TransportContext(%s, %s, %s)", b10, d10, encodeToString);
    }
}
