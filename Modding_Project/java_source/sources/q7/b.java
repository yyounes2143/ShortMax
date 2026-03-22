package q7;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseException;
/* compiled from: DefaultAppCheckTokenResult.java */
/* loaded from: classes5.dex */
public final class b extends p7.d {

    /* renamed from: a  reason: collision with root package name */
    private final String f65214a;

    /* renamed from: b  reason: collision with root package name */
    private final FirebaseException f65215b;

    private b(@NonNull String str, @Nullable FirebaseException firebaseException) {
        Preconditions.checkNotEmpty(str);
        this.f65214a = str;
        this.f65215b = firebaseException;
    }

    @NonNull
    public static b c(@NonNull p7.c cVar) {
        Preconditions.checkNotNull(cVar);
        return new b(cVar.b(), null);
    }

    @NonNull
    public static b d(@NonNull FirebaseException firebaseException) {
        return new b("eyJlcnJvciI6IlVOS05PV05fRVJST1IifQ==", (FirebaseException) Preconditions.checkNotNull(firebaseException));
    }

    @Override // p7.d
    @Nullable
    public Exception a() {
        return this.f65215b;
    }

    @Override // p7.d
    @NonNull
    public String b() {
        return this.f65214a;
    }
}
