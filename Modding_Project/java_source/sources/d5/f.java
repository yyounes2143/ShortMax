package d5;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
/* compiled from: CreationContext.java */
@AutoValue
/* loaded from: classes4.dex */
public abstract class f {
    public static f a(Context context, m5.a aVar, m5.a aVar2, String str) {
        return new b(context, aVar, aVar2, str);
    }

    public abstract Context b();

    @NonNull
    public abstract String c();

    public abstract m5.a d();

    public abstract m5.a e();
}
