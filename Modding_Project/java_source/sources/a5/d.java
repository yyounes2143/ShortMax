package a5;

import androidx.annotation.Nullable;
import com.google.android.datatransport.Priority;
import com.google.auto.value.AutoValue;
/* compiled from: Event.java */
@AutoValue
/* loaded from: classes4.dex */
public abstract class d<T> {
    public static <T> d<T> f(T t10) {
        return new a(null, t10, Priority.DEFAULT, null, null);
    }

    public static <T> d<T> g(T t10, @Nullable f fVar) {
        return new a(null, t10, Priority.DEFAULT, fVar, null);
    }

    public static <T> d<T> h(T t10) {
        return new a(null, t10, Priority.HIGHEST, null, null);
    }

    @Nullable
    public abstract Integer a();

    @Nullable
    public abstract e b();

    public abstract T c();

    public abstract Priority d();

    @Nullable
    public abstract f e();
}
